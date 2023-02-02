// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon Web Services X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.
public protocol XRayClientProtocol {
    /// Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    func batchGetTraces(input: BatchGetTracesInput) async throws -> BatchGetTracesOutputResponse
    /// Creates a group resource with a name and a filter expression.
    func createGroup(input: CreateGroupInput) async throws -> CreateGroupOutputResponse
    /// Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with [GetSamplingRules](https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html), and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with [GetSamplingTargets](https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html) to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
    func createSamplingRule(input: CreateSamplingRuleInput) async throws -> CreateSamplingRuleOutputResponse
    /// Deletes a group resource.
    func deleteGroup(input: DeleteGroupInput) async throws -> DeleteGroupOutputResponse
    /// Deletes a resource policy from the target Amazon Web Services account.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Deletes a sampling rule.
    func deleteSamplingRule(input: DeleteSamplingRuleInput) async throws -> DeleteSamplingRuleOutputResponse
    /// Retrieves the current encryption configuration for X-Ray data.
    func getEncryptionConfig(input: GetEncryptionConfigInput) async throws -> GetEncryptionConfigOutputResponse
    /// Retrieves group resource details.
    func getGroup(input: GetGroupInput) async throws -> GetGroupOutputResponse
    /// Retrieves all active group details.
    func getGroups(input: GetGroupsInput) async throws -> GetGroupsOutputResponse
    /// Retrieves the summary information of an insight. This includes impact to clients and root cause services, the top anomalous services, the category, the state of the insight, and the start and end time of the insight.
    func getInsight(input: GetInsightInput) async throws -> GetInsightOutputResponse
    /// X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray console.
    func getInsightEvents(input: GetInsightEventsInput) async throws -> GetInsightEventsOutputResponse
    /// Retrieves a service graph structure filtered by the specified insight. The service graph is limited to only structural information. For a complete service graph, use this API with the GetServiceGraph API.
    func getInsightImpactGraph(input: GetInsightImpactGraphInput) async throws -> GetInsightImpactGraphOutputResponse
    /// Retrieves the summaries of all insights in the specified group matching the provided filter values.
    func getInsightSummaries(input: GetInsightSummariesInput) async throws -> GetInsightSummariesOutputResponse
    /// Retrieves all sampling rules.
    func getSamplingRules(input: GetSamplingRulesInput) async throws -> GetSamplingRulesOutputResponse
    /// Retrieves information about recent sampling results for all sampling rules.
    func getSamplingStatisticSummaries(input: GetSamplingStatisticSummariesInput) async throws -> GetSamplingStatisticSummariesOutputResponse
    /// Requests a sampling quota for rules that the service is using to sample requests.
    func getSamplingTargets(input: GetSamplingTargetsInput) async throws -> GetSamplingTargetsOutputResponse
    /// Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the [Amazon Web Services X-Ray SDK](https://docs.aws.amazon.com/xray/index.html). Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL databases.
    func getServiceGraph(input: GetServiceGraphInput) async throws -> GetServiceGraphOutputResponse
    /// Get an aggregation of service statistics defined by a specific time range.
    func getTimeSeriesServiceStatistics(input: GetTimeSeriesServiceStatisticsInput) async throws -> GetTimeSeriesServiceStatisticsOutputResponse
    /// Retrieves a service graph for one or more specific trace IDs.
    func getTraceGraph(input: GetTraceGraphInput) async throws -> GetTraceGraphOutputResponse
    /// Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com: service("api.example.com") This filter expression finds traces that have an annotation named account with the value 12345: annotation.account = "12345" For a full list of indexed fields and keywords that you can use in filter expressions, see [Using Filter Expressions](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html) in the Amazon Web Services X-Ray Developer Guide.
    func getTraceSummaries(input: GetTraceSummariesInput) async throws -> GetTraceSummariesOutputResponse
    /// Returns the list of resource policies in the target Amazon Web Services account.
    func listResourcePolicies(input: ListResourcePoliciesInput) async throws -> ListResourcePoliciesOutputResponse
    /// Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Updates the encryption configuration for X-Ray data.
    func putEncryptionConfig(input: PutEncryptionConfigInput) async throws -> PutEncryptionConfigOutputResponse
    /// Sets the resource policy to grant one or more Amazon Web Services services and accounts permissions to access X-Ray. Each resource policy will be associated with a specific Amazon Web Services account. Each Amazon Web Services account can have a maximum of 5 resource policies, and each policy name must be unique within that account. The maximum size of each resource policy is 5KB.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Used by the Amazon Web Services X-Ray daemon to upload telemetry.
    func putTelemetryRecords(input: PutTelemetryRecordsInput) async throws -> PutTelemetryRecordsOutputResponse
    /// Uploads segment documents to Amazon Web Services X-Ray. The [X-Ray SDK](https://docs.aws.amazon.com/xray/index.html) generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see [Amazon Web Services X-Ray Segment Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html) in the Amazon Web Services X-Ray Developer Guide. Required segment document fields
    ///
    /// * name - The name of the service that handled the request.
    ///
    /// * id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.
    ///
    /// * trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.
    ///
    /// * start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.
    ///
    /// * end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.
    ///
    /// * in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in-progress segment when your application receives a request that will take a long time to serve, to trace that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.
    ///
    ///
    /// A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes: Trace ID Format
    ///
    /// * The version number, for instance, 1.
    ///
    /// * The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.
    ///
    /// * A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.
    func putTraceSegments(input: PutTraceSegmentsInput) async throws -> PutTraceSegmentsOutputResponse
    /// Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from an Amazon Web Services X-Ray group or sampling rule. You cannot edit or delete system tags (those with an aws: prefix).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a group resource.
    func updateGroup(input: UpdateGroupInput) async throws -> UpdateGroupOutputResponse
    /// Modifies a sampling rule's configuration.
    func updateSamplingRule(input: UpdateSamplingRuleInput) async throws -> UpdateSamplingRuleOutputResponse
}

public protocol XRayClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum XRayClientTypes {}