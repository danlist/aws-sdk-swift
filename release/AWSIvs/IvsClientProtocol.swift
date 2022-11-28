// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Introduction The Amazon Interactive Video Service (IVS) API is REST compatible, using a standard HTTP API and an Amazon Web Services EventBridge event stream for responses. JSON is used for both requests and responses, including errors. The API is an Amazon Web Services regional service. For a list of supported regions and Amazon IVS HTTPS service endpoints, see the [Amazon IVS page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the Amazon Web Services General Reference. All API request parameters and URLs are case sensitive. For a summary of notable documentation changes in each release, see [ Document History](https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html). Allowed Header Values
///
/// * Accept:  application/json
///
/// * Accept-Encoding:  gzip, deflate
///
/// * Content-Type: application/json
///
///
/// Resources The following resources contain information about your IVS live stream (see [ Getting Started with Amazon IVS](https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html)):
///
/// * Channel — Stores configuration data related to your live stream. You first create a channel and then use the channel’s stream key to start your live stream. See the Channel endpoints for more information.
///
/// * Stream key — An identifier assigned by Amazon IVS when you create a channel, which is then used to authorize streaming. See the StreamKey endpoints for more information. Treat the stream key like a secret, since it allows anyone to stream to the channel.
///
/// * Playback key pair — Video playback may be restricted using playback-authorization tokens, which use public-key encryption. A playback key pair is the public-private pair of keys used to sign and validate the playback-authorization token. See the PlaybackKeyPair endpoints for more information.
///
/// * Recording configuration — Stores configuration related to recording a live stream and where to store the recorded content. Multiple channels can reference the same recording configuration. See the Recording Configuration endpoints for more information.
///
///
/// Tagging A tag is a metadata label that you assign to an Amazon Web Services resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for more information, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is documented there. Tags can help you identify and organize your Amazon Web Services resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see [ Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)). The Amazon IVS API has these tag-related endpoints: [TagResource], [UntagResource], and [ListTagsForResource]. The following resources support tagging: Channels, Stream Keys, Playback Key Pairs, and Recording Configurations. At most 50 tags can be applied to a resource. Authentication versus Authorization Note the differences between these concepts:
///
/// * Authentication is about verifying identity. You need to be authenticated to sign Amazon IVS API requests.
///
/// * Authorization is about granting permissions. Your IAM roles need to have permissions for Amazon IVS API requests. In addition, authorization is needed to view [Amazon IVS private channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html). (Private channels are channels that are enabled for "playback authorization.")
///
///
/// Authentication All Amazon IVS API requests must be authenticated with a signature. The Amazon Web Services Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the underlying API calls for you. However, if your application calls the Amazon IVS API directly, it’s your responsibility to sign the requests. You generate a signature using valid Amazon Web Services credentials that have permission to perform the requested action. For example, you must sign PutMetadata requests with a signature generated from an IAM user account that has the ivs:PutMetadata permission. For more information:
///
/// * Authentication and generating signatures — See [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the Amazon Web Services General Reference.
///
/// * Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html) on the Security page of the Amazon IVS User Guide.
///
///
/// Amazon Resource Names (ARNs) ARNs uniquely identify AWS resources. An ARN is required when you need to specify a resource unambiguously across all of AWS, such as in IAM policies and API calls. For more information, see [Amazon Resource Names](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the AWS General Reference. Channel Endpoints
///
/// * [CreateChannel] — Creates a new channel and an associated stream key to start streaming.
///
/// * [GetChannel] — Gets the channel configuration for the specified channel ARN.
///
/// * [BatchGetChannel] — Performs [GetChannel] on multiple ARNs simultaneously.
///
/// * [ListChannels] — Gets summary information about all channels in your account, in the Amazon Web Services region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 Conflict Exception).
///
/// * [UpdateChannel] — Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.
///
/// * [DeleteChannel] — Deletes the specified channel.
///
///
/// StreamKey Endpoints
///
/// * [CreateStreamKey] — Creates a stream key, used to initiate a stream, for the specified channel ARN.
///
/// * [GetStreamKey] — Gets stream key information for the specified ARN.
///
/// * [BatchGetStreamKey] — Performs [GetStreamKey] on multiple ARNs simultaneously.
///
/// * [ListStreamKeys] — Gets summary information about stream keys for the specified channel.
///
/// * [DeleteStreamKey] — Deletes the stream key for the specified ARN, so it can no longer be used to stream.
///
///
/// Stream Endpoints
///
/// * [GetStream] — Gets information about the active (live) stream on a specified channel.
///
/// * [GetStreamSession] — Gets metadata on a specified stream.
///
/// * [ListStreams] — Gets summary information about live streams in your account, in the Amazon Web Services region where the API request is processed.
///
/// * [ListStreamSessions] — Gets a summary of current and previous streams for a specified channel in your account, in the AWS region where the API request is processed.
///
/// * [StopStream] — Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with [DeleteStreamKey] to prevent further streaming to a channel.
///
/// * [PutMetadata] — Inserts metadata into the active stream of the specified channel. At most 5 requests per second per channel are allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.) At most 155 requests per second per account are allowed.
///
///
/// PlaybackKeyPair Endpoints For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
///
/// * [ImportPlaybackKeyPair] — Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to private channels (channels enabled for playback authorization).
///
/// * [GetPlaybackKeyPair] — Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels.
///
/// * [ListPlaybackKeyPairs] — Gets summary information about playback key pairs.
///
/// * [DeletePlaybackKeyPair] — Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey.
///
///
/// RecordingConfiguration Endpoints
///
/// * [CreateRecordingConfiguration] — Creates a new recording configuration, used to enable recording to Amazon S3.
///
/// * [GetRecordingConfiguration] — Gets the recording-configuration metadata for the specified ARN.
///
/// * [ListRecordingConfigurations] — Gets summary information about all recording configurations in your account, in the Amazon Web Services region where the API request is processed.
///
/// * [DeleteRecordingConfiguration] — Deletes the recording configuration for the specified ARN.
///
///
/// Amazon Web Services Tags Endpoints
///
/// * [TagResource] — Adds or updates tags for the Amazon Web Services resource with the specified ARN.
///
/// * [UntagResource] — Removes tags from the resource with the specified ARN.
///
/// * [ListTagsForResource] — Gets information about Amazon Web Services tags for the specified ARN.
public protocol IvsClientProtocol {
    /// Performs [GetChannel] on multiple ARNs simultaneously.
    func batchGetChannel(input: BatchGetChannelInput) async throws -> BatchGetChannelOutputResponse
    /// Performs [GetStreamKey] on multiple ARNs simultaneously.
    func batchGetStreamKey(input: BatchGetStreamKeyInput) async throws -> BatchGetStreamKeyOutputResponse
    /// Creates a new channel and an associated stream key to start streaming.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// Creates a new recording configuration, used to enable recording to Amazon S3. Known issue: In the us-east-1 region, if you use the Amazon Web Services CLI to create a recording configuration, it returns success even if the S3 bucket is in a different region. In this case, the state of the recording configuration is CREATE_FAILED (instead of ACTIVE). (In other regions, the CLI correctly returns failure if the bucket is in a different region.) Workaround: Ensure that your S3 bucket is in the same region as the recording configuration. If you create a recording configuration in a different region as your S3 bucket, delete that recording configuration and create a new one with an S3 bucket from the correct region.
    func createRecordingConfiguration(input: CreateRecordingConfigurationInput) async throws -> CreateRecordingConfigurationOutputResponse
    /// Creates a stream key, used to initiate a stream, for the specified channel ARN. Note that [CreateChannel] creates a stream key. If you subsequently use CreateStreamKey on the same channel, it will fail because a stream key already exists and there is a limit of 1 stream key per channel. To reset the stream key on a channel, use [DeleteStreamKey] and then CreateStreamKey.
    func createStreamKey(input: CreateStreamKeyInput) async throws -> CreateStreamKeyOutputResponse
    /// Deletes the specified channel and its associated stream keys. If you try to delete a live channel, you will get an error (409 ConflictException). To delete a channel that is live, call [StopStream], wait for the Amazon EventBridge "Stream End" event (to verify that the stream's state was changed from Live to Offline), then call DeleteChannel. (See [ Using EventBridge with Amazon IVS](https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func deletePlaybackKeyPair(input: DeletePlaybackKeyPairInput) async throws -> DeletePlaybackKeyPairOutputResponse
    /// Deletes the recording configuration for the specified ARN. If you try to delete a recording configuration that is associated with a channel, you will get an error (409 ConflictException). To avoid this, for all channels that reference the recording configuration, first use [UpdateChannel] to set the recordingConfigurationArn field to an empty string, then use DeleteRecordingConfiguration.
    func deleteRecordingConfiguration(input: DeleteRecordingConfigurationInput) async throws -> DeleteRecordingConfigurationOutputResponse
    /// Deletes the stream key for the specified ARN, so it can no longer be used to stream.
    func deleteStreamKey(input: DeleteStreamKeyInput) async throws -> DeleteStreamKeyOutputResponse
    /// Gets the channel configuration for the specified channel ARN. See also [BatchGetChannel].
    func getChannel(input: GetChannelInput) async throws -> GetChannelOutputResponse
    /// Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func getPlaybackKeyPair(input: GetPlaybackKeyPairInput) async throws -> GetPlaybackKeyPairOutputResponse
    /// Gets the recording configuration for the specified ARN.
    func getRecordingConfiguration(input: GetRecordingConfigurationInput) async throws -> GetRecordingConfigurationOutputResponse
    /// Gets information about the active (live) stream on a specified channel.
    func getStream(input: GetStreamInput) async throws -> GetStreamOutputResponse
    /// Gets stream-key information for a specified ARN.
    func getStreamKey(input: GetStreamKeyInput) async throws -> GetStreamKeyOutputResponse
    /// Gets metadata on a specified stream.
    func getStreamSession(input: GetStreamSessionInput) async throws -> GetStreamSessionOutputResponse
    /// Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to private channels. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func importPlaybackKeyPair(input: ImportPlaybackKeyPairInput) async throws -> ImportPlaybackKeyPairOutputResponse
    /// Gets summary information about all channels in your account, in the Amazon Web Services region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 ConflictException).
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// Gets summary information about playback key pairs. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html) in the Amazon IVS User Guide.
    func listPlaybackKeyPairs(input: ListPlaybackKeyPairsInput) async throws -> ListPlaybackKeyPairsOutputResponse
    /// Gets summary information about all recording configurations in your account, in the Amazon Web Services region where the API request is processed.
    func listRecordingConfigurations(input: ListRecordingConfigurationsInput) async throws -> ListRecordingConfigurationsOutputResponse
    /// Gets summary information about stream keys for the specified channel.
    func listStreamKeys(input: ListStreamKeysInput) async throws -> ListStreamKeysOutputResponse
    /// Gets summary information about live streams in your account, in the Amazon Web Services region where the API request is processed.
    func listStreams(input: ListStreamsInput) async throws -> ListStreamsOutputResponse
    /// Gets a summary of current and previous streams for a specified channel in your account, in the AWS region where the API request is processed.
    func listStreamSessions(input: ListStreamSessionsInput) async throws -> ListStreamSessionsOutputResponse
    /// Gets information about Amazon Web Services tags for the specified ARN.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Inserts metadata into the active stream of the specified channel. At most 5 requests per second per channel are allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.) At most 155 requests per second per account are allowed. Also see [Embedding Metadata within a Video Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html) in the Amazon IVS User Guide.
    func putMetadata(input: PutMetadataInput) async throws -> PutMetadataOutputResponse
    /// Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with [DeleteStreamKey] to prevent further streaming to a channel. Many streaming client-software libraries automatically reconnect a dropped RTMPS session, so to stop the stream permanently, you may want to first revoke the streamKey attached to the channel.
    func stopStream(input: StopStreamInput) async throws -> StopStreamOutputResponse
    /// Adds or updates tags for the Amazon Web Services resource with the specified ARN.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the resource with the specified ARN.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
}

public protocol IvsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IvsClientTypes {}