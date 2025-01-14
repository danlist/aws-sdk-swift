// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS Elemental MediaPackage
public protocol MediaPackageClientProtocol {
    /// Changes the Channel's properities to configure log subscription
    func configureLogs(input: ConfigureLogsInput) async throws -> ConfigureLogsOutputResponse
    /// Creates a new Channel.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// Creates a new HarvestJob record.
    func createHarvestJob(input: CreateHarvestJobInput) async throws -> CreateHarvestJobOutputResponse
    /// Creates a new OriginEndpoint record.
    func createOriginEndpoint(input: CreateOriginEndpointInput) async throws -> CreateOriginEndpointOutputResponse
    /// Deletes an existing Channel.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// Deletes an existing OriginEndpoint.
    func deleteOriginEndpoint(input: DeleteOriginEndpointInput) async throws -> DeleteOriginEndpointOutputResponse
    /// Gets details about a Channel.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    /// Gets details about an existing HarvestJob.
    func describeHarvestJob(input: DescribeHarvestJobInput) async throws -> DescribeHarvestJobOutputResponse
    /// Gets details about an existing OriginEndpoint.
    func describeOriginEndpoint(input: DescribeOriginEndpointInput) async throws -> DescribeOriginEndpointOutputResponse
    /// Returns a collection of Channels.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// Returns a collection of HarvestJob records.
    func listHarvestJobs(input: ListHarvestJobsInput) async throws -> ListHarvestJobsOutputResponse
    /// Returns a collection of OriginEndpoint records.
    func listOriginEndpoints(input: ListOriginEndpointsInput) async throws -> ListOriginEndpointsOutputResponse
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    func rotateChannelCredentials(input: RotateChannelCredentialsInput) async throws -> RotateChannelCredentialsOutputResponse
    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    func rotateIngestEndpointCredentials(input: RotateIngestEndpointCredentialsInput) async throws -> RotateIngestEndpointCredentialsOutputResponse
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing Channel.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    /// Updates an existing OriginEndpoint.
    func updateOriginEndpoint(input: UpdateOriginEndpointInput) async throws -> UpdateOriginEndpointOutputResponse
}

public protocol MediaPackageClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MediaPackageClientTypes {}
