// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// This section provides documentation for the AWS RoboMaker API operations.
public protocol RoboMakerClientProtocol {
    /// Deletes one or more worlds in a batch operation.
    func batchDeleteWorlds(input: BatchDeleteWorldsInput) async throws -> BatchDeleteWorldsOutputResponse
    /// Describes one or more simulation jobs.
    func batchDescribeSimulationJob(input: BatchDescribeSimulationJobInput) async throws -> BatchDescribeSimulationJobOutputResponse
    /// Cancels the specified deployment job. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func cancelDeploymentJob(input: CancelDeploymentJobInput) async throws -> CancelDeploymentJobOutputResponse
    /// Cancels the specified simulation job.
    func cancelSimulationJob(input: CancelSimulationJobInput) async throws -> CancelSimulationJobOutputResponse
    /// Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch.
    func cancelSimulationJobBatch(input: CancelSimulationJobBatchInput) async throws -> CancelSimulationJobBatchOutputResponse
    /// Cancels the specified export job.
    func cancelWorldExportJob(input: CancelWorldExportJobInput) async throws -> CancelWorldExportJobOutputResponse
    /// Cancels the specified world generator job.
    func cancelWorldGenerationJob(input: CancelWorldGenerationJobInput) async throws -> CancelWorldGenerationJobOutputResponse
    /// Deploys a specific version of a robot application to robots in a fleet. This API is no longer supported and will throw an error if used. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see [Creating a Robot Application Version](https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html). After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func createDeploymentJob(input: CreateDeploymentJobInput) async throws -> CreateDeploymentJobOutputResponse
    /// Creates a fleet, a logical group of robots running the same robot application. This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func createFleet(input: CreateFleetInput) async throws -> CreateFleetOutputResponse
    /// Creates a robot. This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func createRobot(input: CreateRobotInput) async throws -> CreateRobotOutputResponse
    /// Creates a robot application.
    func createRobotApplication(input: CreateRobotApplicationInput) async throws -> CreateRobotApplicationOutputResponse
    /// Creates a version of a robot application.
    func createRobotApplicationVersion(input: CreateRobotApplicationVersionInput) async throws -> CreateRobotApplicationVersionOutputResponse
    /// Creates a simulation application.
    func createSimulationApplication(input: CreateSimulationApplicationInput) async throws -> CreateSimulationApplicationOutputResponse
    /// Creates a simulation application with a specific revision id.
    func createSimulationApplicationVersion(input: CreateSimulationApplicationVersionInput) async throws -> CreateSimulationApplicationVersionOutputResponse
    /// Creates a simulation job. After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.
    func createSimulationJob(input: CreateSimulationJobInput) async throws -> CreateSimulationJobOutputResponse
    /// Creates a world export job.
    func createWorldExportJob(input: CreateWorldExportJobInput) async throws -> CreateWorldExportJobOutputResponse
    /// Creates worlds using the specified template.
    func createWorldGenerationJob(input: CreateWorldGenerationJobInput) async throws -> CreateWorldGenerationJobOutputResponse
    /// Creates a world template.
    func createWorldTemplate(input: CreateWorldTemplateInput) async throws -> CreateWorldTemplateOutputResponse
    /// Deletes a fleet. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func deleteFleet(input: DeleteFleetInput) async throws -> DeleteFleetOutputResponse
    /// Deletes a robot. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func deleteRobot(input: DeleteRobotInput) async throws -> DeleteRobotOutputResponse
    /// Deletes a robot application.
    func deleteRobotApplication(input: DeleteRobotApplicationInput) async throws -> DeleteRobotApplicationOutputResponse
    /// Deletes a simulation application.
    func deleteSimulationApplication(input: DeleteSimulationApplicationInput) async throws -> DeleteSimulationApplicationOutputResponse
    /// Deletes a world template.
    func deleteWorldTemplate(input: DeleteWorldTemplateInput) async throws -> DeleteWorldTemplateOutputResponse
    /// Deregisters a robot. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func deregisterRobot(input: DeregisterRobotInput) async throws -> DeregisterRobotOutputResponse
    /// Describes a deployment job. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func describeDeploymentJob(input: DescribeDeploymentJobInput) async throws -> DescribeDeploymentJobOutputResponse
    /// Describes a fleet. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func describeFleet(input: DescribeFleetInput) async throws -> DescribeFleetOutputResponse
    /// Describes a robot. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func describeRobot(input: DescribeRobotInput) async throws -> DescribeRobotOutputResponse
    /// Describes a robot application.
    func describeRobotApplication(input: DescribeRobotApplicationInput) async throws -> DescribeRobotApplicationOutputResponse
    /// Describes a simulation application.
    func describeSimulationApplication(input: DescribeSimulationApplicationInput) async throws -> DescribeSimulationApplicationOutputResponse
    /// Describes a simulation job.
    func describeSimulationJob(input: DescribeSimulationJobInput) async throws -> DescribeSimulationJobOutputResponse
    /// Describes a simulation job batch.
    func describeSimulationJobBatch(input: DescribeSimulationJobBatchInput) async throws -> DescribeSimulationJobBatchOutputResponse
    /// Describes a world.
    func describeWorld(input: DescribeWorldInput) async throws -> DescribeWorldOutputResponse
    /// Describes a world export job.
    func describeWorldExportJob(input: DescribeWorldExportJobInput) async throws -> DescribeWorldExportJobOutputResponse
    /// Describes a world generation job.
    func describeWorldGenerationJob(input: DescribeWorldGenerationJobInput) async throws -> DescribeWorldGenerationJobOutputResponse
    /// Describes a world template.
    func describeWorldTemplate(input: DescribeWorldTemplateInput) async throws -> DescribeWorldTemplateOutputResponse
    /// Gets the world template body.
    func getWorldTemplateBody(input: GetWorldTemplateBodyInput) async throws -> GetWorldTemplateBodyOutputResponse
    /// Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func listDeploymentJobs(input: ListDeploymentJobsInput) async throws -> ListDeploymentJobsOutputResponse
    /// Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func listFleets(input: ListFleetsInput) async throws -> ListFleetsOutputResponse
    /// Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    func listRobotApplications(input: ListRobotApplicationsInput) async throws -> ListRobotApplicationsOutputResponse
    /// Returns a list of robots. You can optionally provide filters to retrieve specific robots. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func listRobots(input: ListRobotsInput) async throws -> ListRobotsOutputResponse
    /// Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    func listSimulationApplications(input: ListSimulationApplicationsInput) async throws -> ListSimulationApplicationsOutputResponse
    /// Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs.
    func listSimulationJobBatches(input: ListSimulationJobBatchesInput) async throws -> ListSimulationJobBatchesOutputResponse
    /// Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    func listSimulationJobs(input: ListSimulationJobsInput) async throws -> ListSimulationJobsOutputResponse
    /// Lists all tags on a AWS RoboMaker resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists world export jobs.
    func listWorldExportJobs(input: ListWorldExportJobsInput) async throws -> ListWorldExportJobsOutputResponse
    /// Lists world generator jobs.
    func listWorldGenerationJobs(input: ListWorldGenerationJobsInput) async throws -> ListWorldGenerationJobsOutputResponse
    /// Lists worlds.
    func listWorlds(input: ListWorldsInput) async throws -> ListWorldsOutputResponse
    /// Lists world templates.
    func listWorldTemplates(input: ListWorldTemplatesInput) async throws -> ListWorldTemplatesOutputResponse
    /// Registers a robot with a fleet. This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func registerRobot(input: RegisterRobotInput) async throws -> RegisterRobotOutputResponse
    /// Restarts a running simulation job.
    func restartSimulationJob(input: RestartSimulationJobInput) async throws -> RestartSimulationJobOutputResponse
    /// Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects.
    func startSimulationJobBatch(input: StartSimulationJobBatchInput) async throws -> StartSimulationJobBatchOutputResponse
    /// Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment. This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    func syncDeploymentJob(input: SyncDeploymentJobInput) async throws -> SyncDeploymentJobOutputResponse
    /// Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings. For information about the rules that apply to tag keys and tag values, see [User-Defined Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html) in the AWS Billing and Cost Management User Guide.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use [TagResource](https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a robot application.
    func updateRobotApplication(input: UpdateRobotApplicationInput) async throws -> UpdateRobotApplicationOutputResponse
    /// Updates a simulation application.
    func updateSimulationApplication(input: UpdateSimulationApplicationInput) async throws -> UpdateSimulationApplicationOutputResponse
    /// Updates a world template.
    func updateWorldTemplate(input: UpdateWorldTemplateInput) async throws -> UpdateWorldTemplateOutputResponse
}

public protocol RoboMakerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum RoboMakerClientTypes {}
