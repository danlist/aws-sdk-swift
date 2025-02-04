//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import ClientRuntime
import Foundation

enum TestEvent: MessageMarshallable, MessageUnmarshallable {
    case allHeaders
    case emptyPayload
    case noHeaders

    init(message: ClientRuntime.EventStream.Message, decoder: ResponseDecoder) {
        if message == validMessageWithAllHeaders {
            self = .allHeaders
        } else if message == validMessageEmptyPayload {
            self = .emptyPayload
        } else if message == validMessageNoHeaders {
            self = .noHeaders
        } else {
            fatalError("Unknown message")
        }
    }

    func marshall(encoder: RequestEncoder) -> ClientRuntime.EventStream.Message {
        switch self {
        case .allHeaders:
            return validMessageWithAllHeaders
        case .emptyPayload:
            return validMessageEmptyPayload
        case .noHeaders:
            return validMessageNoHeaders
        }
    }
}

let validMessageWithAllHeaders = EventStream.Message(
    headers: [
        .init(name: "true", value: .bool(true)),
        .init(name: "false", value: .bool(false)),
        .init(name: "byte", value: .byte(50)),
        .init(name: "short", value: .int16(20_000)),
        .init(name: "int", value: .int32(500_000)),
        .init(name: "long", value: .int64(50_000_000_000)),
        .init(name: "bytes", value: .byteArray("some bytes".data(using: .utf8)!)),
        .init(name: "str", value: .string("some str")),
        .init(name: "time", value: .timestamp(Date(timeIntervalSince1970: 5_000_000))),
        .init(name: "uuid", value: .uuid(UUID(uuidString: "b79bc914-de21-4e13-b8b2-bc47e85b7f0b")!))
    ],
    payload: "some payload".data(using: .utf8)!
)

/// This is the encoded version of the above message validMessageWithAllHeaders
/// https://github.com/awslabs/aws-sdk-kotlin/blob/2e22b7bb25c3ec7b192f305e999d1e6f9c40368b/aws-runtime/protocols/aws-event-stream/common/test/aws/sdk/kotlin/runtime/protocol/eventstream/MessageTest.kt#L29
let validMessageDataWithAllHeaders = Data([
    0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x7a, 0x8b, 0xb4, 0x95, 0xfb, 0x04, 0x74, 0x72, 0x75,
    0x65, 0x00, 0x05, 0x66, 0x61, 0x6c, 0x73, 0x65, 0x01, 0x04, 0x62, 0x79, 0x74, 0x65, 0x02, 0x32,
    0x05, 0x73, 0x68, 0x6f, 0x72, 0x74, 0x03, 0x4e, 0x20, 0x03, 0x69, 0x6e, 0x74, 0x04, 0x00, 0x07,
    0xa1, 0x20, 0x04, 0x6c, 0x6f, 0x6e, 0x67, 0x05, 0x00, 0x00, 0x00, 0x0b, 0xa4, 0x3b, 0x74, 0x00,
    0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x06, 0x00, 0x0a, 0x73, 0x6f, 0x6d, 0x65, 0x20, 0x62, 0x79,
    0x74, 0x65, 0x73, 0x03, 0x73, 0x74, 0x72, 0x07, 0x00, 0x08, 0x73, 0x6f, 0x6d, 0x65, 0x20, 0x73,
    0x74, 0x72, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x08, 0x00, 0x00, 0x00, 0x01, 0x2a, 0x05, 0xf2, 0x00,
    0x04, 0x75, 0x75, 0x69, 0x64, 0x09, 0xb7, 0x9b, 0xc9, 0x14, 0xde, 0x21, 0x4e, 0x13, 0xb8, 0xb2,
    0xbc, 0x47, 0xe8, 0x5b, 0x7f, 0x0b, 0x73, 0x6f, 0x6d, 0x65, 0x20, 0x70, 0x61, 0x79, 0x6c, 0x6f,
    0x61, 0x64, 0x01, 0xa0, 0x58, 0x60,
])

let validMessageEmptyPayload = EventStream.Message(
    headers: [
        .init(name: "some-header", value: .int16(500)),
    ]
)

/// This is the encoded version of the above message validMessageEmptyPayload
/// https://github.com/awslabs/aws-sdk-kotlin/blob/2e22b7bb25c3ec7b192f305e999d1e6f9c40368b/aws-runtime/protocols/aws-event-stream/common/test/aws/sdk/kotlin/runtime/protocol/eventstream/MessageTest.kt#L42
let validMessageDataEmptyPayload = Data([
    0x00, 0x00, 0x00, 0x1f, 0x00, 0x00, 0x00, 0x0f, 0x17, 0x2d, 0xc2, 0xab, 0x0b, 0x73, 0x6f, 0x6d,
    0x65, 0x2d, 0x68, 0x65, 0x61, 0x64, 0x65, 0x72, 0x03, 0x01, 0xf4, 0x93, 0x3c, 0x5c, 0xad,
])

let validMessageNoHeaders = EventStream.Message(
    payload: "another test payload".data(using: .utf8)!
)

/// This is the encoded version of the above message validMessageNoHeaders
/// https://github.com/awslabs/aws-sdk-kotlin/blob/2e22b7bb25c3ec7b192f305e999d1e6f9c40368b/aws-runtime/protocols/aws-event-stream/common/test/aws/sdk/kotlin/runtime/protocol/eventstream/MessageTest.kt#L47
let validMessageDataNoHeaders = Data([
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x51, 0x63, 0x56, 0xad, 0x61, 0x6e, 0x6f, 0x74,
    0x68, 0x65, 0x72, 0x20, 0x74, 0x65, 0x73, 0x74, 0x20, 0x70, 0x61, 0x79, 0x6c, 0x6f, 0x61, 0x64,
    0x8d, 0xf8, 0x0e, 0x65,
])
