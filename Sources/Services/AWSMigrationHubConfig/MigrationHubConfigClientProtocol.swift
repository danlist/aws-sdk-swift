// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// The AWS Migration Hub home region APIs are available specifically for working with your Migration Hub home region. You can use these APIs to determine a home region, as well as to create and work with controls that describe the home region.
///
/// * You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a HomeRegionNotSetException error is returned.
///
/// * API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.
///
/// * If you call a write API outside the home region, an InvalidInputException is returned.
///
/// * You can call GetHomeRegion action to obtain the account's Migration Hub home region.
///
///
/// For specific API usage, see the sections that follow in this AWS Migration Hub Home Region API reference.
public protocol MigrationHubConfigClientProtocol {
    /// This API sets up the home region for the calling account only.
    func createHomeRegionControl(input: CreateHomeRegionControlInput) async throws -> CreateHomeRegionControlOutputResponse
    /// This API permits filtering on the ControlId and HomeRegion fields.
    func describeHomeRegionControls(input: DescribeHomeRegionControlsInput) async throws -> DescribeHomeRegionControlsOutputResponse
    /// Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    func getHomeRegion(input: GetHomeRegionInput) async throws -> GetHomeRegionOutputResponse
}

public protocol MigrationHubConfigClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MigrationHubConfigClientTypes {}
