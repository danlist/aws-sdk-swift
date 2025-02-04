// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// The Amazon Chime SDK media pipeline APIs in this section allow software developers to create Amazon Chime SDK media pipelines that capture, concatenate, or stream your Amazon Chime SDK meetings. For more information about media pipelines, see [Amazon Chime SDK media pipelines](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).
public protocol ChimeSDKMediaPipelinesClientProtocol {
    /// Creates a media pipeline.
    func createMediaCapturePipeline(input: CreateMediaCapturePipelineInput) async throws -> CreateMediaCapturePipelineOutputResponse
    /// Creates a media concatenation pipeline.
    func createMediaConcatenationPipeline(input: CreateMediaConcatenationPipelineInput) async throws -> CreateMediaConcatenationPipelineOutputResponse
    /// Creates a media insights pipeline.
    func createMediaInsightsPipeline(input: CreateMediaInsightsPipelineInput) async throws -> CreateMediaInsightsPipelineOutputResponse
    /// A structure that contains the static configurations for a media insights pipeline.
    func createMediaInsightsPipelineConfiguration(input: CreateMediaInsightsPipelineConfigurationInput) async throws -> CreateMediaInsightsPipelineConfigurationOutputResponse
    /// Creates a media live connector pipeline in an Amazon Chime SDK meeting.
    func createMediaLiveConnectorPipeline(input: CreateMediaLiveConnectorPipelineInput) async throws -> CreateMediaLiveConnectorPipelineOutputResponse
    /// Deletes the media pipeline.
    func deleteMediaCapturePipeline(input: DeleteMediaCapturePipelineInput) async throws -> DeleteMediaCapturePipelineOutputResponse
    /// Deletes the specified configuration settings.
    func deleteMediaInsightsPipelineConfiguration(input: DeleteMediaInsightsPipelineConfigurationInput) async throws -> DeleteMediaInsightsPipelineConfigurationOutputResponse
    /// Deletes the media pipeline.
    func deleteMediaPipeline(input: DeleteMediaPipelineInput) async throws -> DeleteMediaPipelineOutputResponse
    /// Gets an existing media pipeline.
    func getMediaCapturePipeline(input: GetMediaCapturePipelineInput) async throws -> GetMediaCapturePipelineOutputResponse
    /// Gets the configuration settings for a media insights pipeline.
    func getMediaInsightsPipelineConfiguration(input: GetMediaInsightsPipelineConfigurationInput) async throws -> GetMediaInsightsPipelineConfigurationOutputResponse
    /// Gets an existing media pipeline.
    func getMediaPipeline(input: GetMediaPipelineInput) async throws -> GetMediaPipelineOutputResponse
    /// Returns a list of media pipelines.
    func listMediaCapturePipelines(input: ListMediaCapturePipelinesInput) async throws -> ListMediaCapturePipelinesOutputResponse
    /// Lists the available media insights pipeline configurations.
    func listMediaInsightsPipelineConfigurations(input: ListMediaInsightsPipelineConfigurationsInput) async throws -> ListMediaInsightsPipelineConfigurationsOutputResponse
    /// Returns a list of media pipelines.
    func listMediaPipelines(input: ListMediaPipelinesInput) async throws -> ListMediaPipelinesOutputResponse
    /// Lists the tags available for a media pipeline.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// The ARN of the media pipeline that you want to tag. Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes any tags from a media pipeline.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the media insights pipeline's configuration settings.
    func updateMediaInsightsPipelineConfiguration(input: UpdateMediaInsightsPipelineConfigurationInput) async throws -> UpdateMediaInsightsPipelineConfigurationOutputResponse
    /// Updates the status of a media insights pipeline.
    func updateMediaInsightsPipelineStatus(input: UpdateMediaInsightsPipelineStatusInput) async throws -> UpdateMediaInsightsPipelineStatusOutputResponse
}

public protocol ChimeSDKMediaPipelinesClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ChimeSDKMediaPipelinesClientTypes {}
