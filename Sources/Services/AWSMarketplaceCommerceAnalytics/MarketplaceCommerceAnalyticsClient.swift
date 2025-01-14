// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceCommerceAnalyticsClient {
    public static let clientName = "MarketplaceCommerceAnalyticsClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MarketplaceCommerceAnalyticsClientConfigurationProtocol
    let serviceName = "Marketplace Commerce Analytics"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: MarketplaceCommerceAnalyticsClientConfigurationProtocol) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MarketplaceCommerceAnalyticsClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MarketplaceCommerceAnalyticsClientConfiguration()
        self.init(config: config)
    }

    public class MarketplaceCommerceAnalyticsClientConfiguration: MarketplaceCommerceAnalyticsClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProviding
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        /// Creates a configuration asynchronously
        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProviding? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let fileBasedConfig = try await CRTFileBasedConfiguration.makeAsync()

            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver { _, _ in fileBasedConfig }

            let resolvedRegion: String?
            if let region = region {
                resolvedRegion = region
            } else {
                resolvedRegion = await resolvedRegionResolver.resolveRegion()
            }

            let resolvedCredentialsProvider: AWSClientRuntime.CredentialsProviding
            if let credentialsProvider = credentialsProvider {
                resolvedCredentialsProvider = credentialsProvider
            } else {
                resolvedCredentialsProvider = try DefaultChainCredentialsProvider(fileBasedConfig: fileBasedConfig)
            }

            try self.init(
                credentialsProvider: resolvedCredentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: resolvedRegion,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS,
                runtimeConfig: runtimeConfig
            )
        }

        public convenience init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProviding? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            let resolvedCredentialsProvider: CredentialsProviding
            if let credentialsProvider = credentialsProvider {
                resolvedCredentialsProvider = credentialsProvider
            } else {
                let fileBasedConfig = try CRTFileBasedConfiguration.make()
                resolvedCredentialsProvider = try DefaultChainCredentialsProvider(fileBasedConfig: fileBasedConfig)
            }

            try self.init(
                credentialsProvider: resolvedCredentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: region,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS,
                runtimeConfig: runtimeConfig
            )
        }

        /// Internal designated init
        /// All convenience inits should call this
        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProviding,
            endpoint: Swift.String?,
            endpointResolver: EndpointResolver?,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata?,
            region: Swift.String?,
            signingRegion: Swift.String?,
            useDualStack: Swift.Bool?,
            useFIPS: Swift.Bool?,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration?
        ) throws {
            let runtimeConfig = try runtimeConfig ?? ClientRuntime.DefaultSDKRuntimeConfiguration("MarketplaceCommerceAnalyticsClient")

            let resolvedSigningRegion = signingRegion ?? region

            let resolvedEndpointsResolver = try endpointResolver ?? DefaultEndpointResolver()

            self.credentialsProvider = credentialsProvider
            self.endpoint = endpoint
            self.endpointResolver = resolvedEndpointsResolver
            self.frameworkMetadata = frameworkMetadata
            self.region = region
            // TODO: Remove region resolver. Region must already be resolved and there is no point in storing the resolver.
            self.regionResolver = nil
            self.signingRegion = resolvedSigningRegion
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public var partitionID: String? {
            return "MarketplaceCommerceAnalyticsClient - \(region ?? "")"
        }
    }
}

public struct MarketplaceCommerceAnalyticsClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MarketplaceCommerceAnalyticsClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MarketplaceCommerceAnalyticsClient: MarketplaceCommerceAnalyticsClientProtocol {
    /// Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func generateDataSet(input: GenerateDataSetInput) async throws -> GenerateDataSetOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "generateDataSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>(id: "generateDataSet")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.GenerateDataSet"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>(xmlName: "GenerateDataSetRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GenerateDataSetOutputResponse, GenerateDataSetOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func startSupportDataExport(input: StartSupportDataExportInput) async throws -> StartSupportDataExportOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startSupportDataExport")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(id: "startSupportDataExport")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.StartSupportDataExport"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>(xmlName: "StartSupportDataExportRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
