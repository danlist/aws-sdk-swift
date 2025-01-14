/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.aws.swift.codegen.restxml

import software.amazon.smithy.aws.swift.codegen.AWSClientRuntimeTypes
import software.amazon.smithy.aws.swift.codegen.AWSSwiftDependency
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.model.shapes.OperationShape
import software.amazon.smithy.swift.codegen.ClientRuntimeTypes
import software.amazon.smithy.swift.codegen.SwiftDependency
import software.amazon.smithy.swift.codegen.declareSection
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator
import software.amazon.smithy.swift.codegen.integration.SectionId
import software.amazon.smithy.swift.codegen.integration.httpResponse.HttpResponseBindingErrorGeneratable
import software.amazon.smithy.swift.codegen.model.toUpperCamelCase

class AWSRestXMLHttpResponseBindingErrorGenerator : HttpResponseBindingErrorGeneratable {

    object RestXMLResponseBindingSectionId : SectionId

    override fun render(ctx: ProtocolGenerator.GenerationContext, op: OperationShape) {
        val operationErrorName = "${op.toUpperCamelCase()}OutputError"
        val rootNamespace = ctx.settings.moduleName
        val httpBindingSymbol = Symbol.builder()
            .definitionFile("./$rootNamespace/models/$operationErrorName+HttpResponseBinding.swift")
            .name(operationErrorName)
            .build()

        ctx.delegator.useShapeWriter(httpBindingSymbol) { writer ->
            writer.addImport(AWSSwiftDependency.AWS_CLIENT_RUNTIME.target)
            writer.addImport(SwiftDependency.CLIENT_RUNTIME.target)

            writer.openBlock("extension \$L: \$N {", "}", operationErrorName, ClientRuntimeTypes.Http.HttpResponseBinding) {
                writer.openBlock(
                    "public init(httpResponse: \$N, decoder: \$D) throws {", "}",
                    ClientRuntimeTypes.Http.HttpResponse,
                    ClientRuntimeTypes.Serde.ResponseDecoder
                ) {
                    writer.declareSection(RestXMLResponseBindingSectionId, mapOf<String, Any>("operationErrorName" to operationErrorName)) {
                        writer.write("let errorDetails = try \$N(httpResponse: httpResponse)", AWSClientRuntimeTypes.RestXML.RestXMLError)
                        writer.write("try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)")
                    }
                }
            }
        }
    }
}
