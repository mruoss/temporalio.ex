defmodule Temporal.Api.Workflowservice.V1.WorkflowService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "temporal.api.workflowservice.v1.WorkflowService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RegisterNamespace,
      Temporal.Api.Workflowservice.V1.RegisterNamespaceRequest,
      Temporal.Api.Workflowservice.V1.RegisterNamespaceResponse

  rpc :DescribeNamespace,
      Temporal.Api.Workflowservice.V1.DescribeNamespaceRequest,
      Temporal.Api.Workflowservice.V1.DescribeNamespaceResponse

  rpc :ListNamespaces,
      Temporal.Api.Workflowservice.V1.ListNamespacesRequest,
      Temporal.Api.Workflowservice.V1.ListNamespacesResponse

  rpc :UpdateNamespace,
      Temporal.Api.Workflowservice.V1.UpdateNamespaceRequest,
      Temporal.Api.Workflowservice.V1.UpdateNamespaceResponse

  rpc :DeprecateNamespace,
      Temporal.Api.Workflowservice.V1.DeprecateNamespaceRequest,
      Temporal.Api.Workflowservice.V1.DeprecateNamespaceResponse

  rpc :StartWorkflowExecution,
      Temporal.Api.Workflowservice.V1.StartWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.StartWorkflowExecutionResponse

  rpc :ExecuteMultiOperation,
      Temporal.Api.Workflowservice.V1.ExecuteMultiOperationRequest,
      Temporal.Api.Workflowservice.V1.ExecuteMultiOperationResponse

  rpc :GetWorkflowExecutionHistory,
      Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryRequest,
      Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryResponse

  rpc :GetWorkflowExecutionHistoryReverse,
      Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryReverseRequest,
      Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryReverseResponse

  rpc :PollWorkflowTaskQueue,
      Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueRequest,
      Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse

  rpc :RespondWorkflowTaskCompleted,
      Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedRequest,
      Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedResponse

  rpc :RespondWorkflowTaskFailed,
      Temporal.Api.Workflowservice.V1.RespondWorkflowTaskFailedRequest,
      Temporal.Api.Workflowservice.V1.RespondWorkflowTaskFailedResponse

  rpc :PollActivityTaskQueue,
      Temporal.Api.Workflowservice.V1.PollActivityTaskQueueRequest,
      Temporal.Api.Workflowservice.V1.PollActivityTaskQueueResponse

  rpc :RecordActivityTaskHeartbeat,
      Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatRequest,
      Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatResponse

  rpc :RecordActivityTaskHeartbeatById,
      Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatByIdRequest,
      Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatByIdResponse

  rpc :RespondActivityTaskCompleted,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedResponse

  rpc :RespondActivityTaskCompletedById,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedByIdRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedByIdResponse

  rpc :RespondActivityTaskFailed,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedResponse

  rpc :RespondActivityTaskFailedById,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedByIdRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedByIdResponse

  rpc :RespondActivityTaskCanceled,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledResponse

  rpc :RespondActivityTaskCanceledById,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledByIdRequest,
      Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledByIdResponse

  rpc :RequestCancelWorkflowExecution,
      Temporal.Api.Workflowservice.V1.RequestCancelWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.RequestCancelWorkflowExecutionResponse

  rpc :SignalWorkflowExecution,
      Temporal.Api.Workflowservice.V1.SignalWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.SignalWorkflowExecutionResponse

  rpc :SignalWithStartWorkflowExecution,
      Temporal.Api.Workflowservice.V1.SignalWithStartWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.SignalWithStartWorkflowExecutionResponse

  rpc :ResetWorkflowExecution,
      Temporal.Api.Workflowservice.V1.ResetWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.ResetWorkflowExecutionResponse

  rpc :TerminateWorkflowExecution,
      Temporal.Api.Workflowservice.V1.TerminateWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.TerminateWorkflowExecutionResponse

  rpc :DeleteWorkflowExecution,
      Temporal.Api.Workflowservice.V1.DeleteWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.DeleteWorkflowExecutionResponse

  rpc :ListOpenWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.ListOpenWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.ListOpenWorkflowExecutionsResponse

  rpc :ListClosedWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.ListClosedWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.ListClosedWorkflowExecutionsResponse

  rpc :ListWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.ListWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.ListWorkflowExecutionsResponse

  rpc :ListArchivedWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.ListArchivedWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.ListArchivedWorkflowExecutionsResponse

  rpc :ScanWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.ScanWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.ScanWorkflowExecutionsResponse

  rpc :CountWorkflowExecutions,
      Temporal.Api.Workflowservice.V1.CountWorkflowExecutionsRequest,
      Temporal.Api.Workflowservice.V1.CountWorkflowExecutionsResponse

  rpc :GetSearchAttributes,
      Temporal.Api.Workflowservice.V1.GetSearchAttributesRequest,
      Temporal.Api.Workflowservice.V1.GetSearchAttributesResponse

  rpc :RespondQueryTaskCompleted,
      Temporal.Api.Workflowservice.V1.RespondQueryTaskCompletedRequest,
      Temporal.Api.Workflowservice.V1.RespondQueryTaskCompletedResponse

  rpc :ResetStickyTaskQueue,
      Temporal.Api.Workflowservice.V1.ResetStickyTaskQueueRequest,
      Temporal.Api.Workflowservice.V1.ResetStickyTaskQueueResponse

  rpc :ShutdownWorker,
      Temporal.Api.Workflowservice.V1.ShutdownWorkerRequest,
      Temporal.Api.Workflowservice.V1.ShutdownWorkerResponse

  rpc :QueryWorkflow,
      Temporal.Api.Workflowservice.V1.QueryWorkflowRequest,
      Temporal.Api.Workflowservice.V1.QueryWorkflowResponse

  rpc :DescribeWorkflowExecution,
      Temporal.Api.Workflowservice.V1.DescribeWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.DescribeWorkflowExecutionResponse

  rpc :DescribeTaskQueue,
      Temporal.Api.Workflowservice.V1.DescribeTaskQueueRequest,
      Temporal.Api.Workflowservice.V1.DescribeTaskQueueResponse

  rpc :GetClusterInfo,
      Temporal.Api.Workflowservice.V1.GetClusterInfoRequest,
      Temporal.Api.Workflowservice.V1.GetClusterInfoResponse

  rpc :GetSystemInfo,
      Temporal.Api.Workflowservice.V1.GetSystemInfoRequest,
      Temporal.Api.Workflowservice.V1.GetSystemInfoResponse

  rpc :ListTaskQueuePartitions,
      Temporal.Api.Workflowservice.V1.ListTaskQueuePartitionsRequest,
      Temporal.Api.Workflowservice.V1.ListTaskQueuePartitionsResponse

  rpc :CreateSchedule,
      Temporal.Api.Workflowservice.V1.CreateScheduleRequest,
      Temporal.Api.Workflowservice.V1.CreateScheduleResponse

  rpc :DescribeSchedule,
      Temporal.Api.Workflowservice.V1.DescribeScheduleRequest,
      Temporal.Api.Workflowservice.V1.DescribeScheduleResponse

  rpc :UpdateSchedule,
      Temporal.Api.Workflowservice.V1.UpdateScheduleRequest,
      Temporal.Api.Workflowservice.V1.UpdateScheduleResponse

  rpc :PatchSchedule,
      Temporal.Api.Workflowservice.V1.PatchScheduleRequest,
      Temporal.Api.Workflowservice.V1.PatchScheduleResponse

  rpc :ListScheduleMatchingTimes,
      Temporal.Api.Workflowservice.V1.ListScheduleMatchingTimesRequest,
      Temporal.Api.Workflowservice.V1.ListScheduleMatchingTimesResponse

  rpc :DeleteSchedule,
      Temporal.Api.Workflowservice.V1.DeleteScheduleRequest,
      Temporal.Api.Workflowservice.V1.DeleteScheduleResponse

  rpc :ListSchedules,
      Temporal.Api.Workflowservice.V1.ListSchedulesRequest,
      Temporal.Api.Workflowservice.V1.ListSchedulesResponse

  rpc :UpdateWorkerBuildIdCompatibility,
      Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatibilityRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatibilityResponse

  rpc :GetWorkerBuildIdCompatibility,
      Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatibilityRequest,
      Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatibilityResponse

  rpc :UpdateWorkerVersioningRules,
      Temporal.Api.Workflowservice.V1.UpdateWorkerVersioningRulesRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkerVersioningRulesResponse

  rpc :GetWorkerVersioningRules,
      Temporal.Api.Workflowservice.V1.GetWorkerVersioningRulesRequest,
      Temporal.Api.Workflowservice.V1.GetWorkerVersioningRulesResponse

  rpc :GetWorkerTaskReachability,
      Temporal.Api.Workflowservice.V1.GetWorkerTaskReachabilityRequest,
      Temporal.Api.Workflowservice.V1.GetWorkerTaskReachabilityResponse

  rpc :DescribeDeployment,
      Temporal.Api.Workflowservice.V1.DescribeDeploymentRequest,
      Temporal.Api.Workflowservice.V1.DescribeDeploymentResponse

  rpc :DescribeWorkerDeploymentVersion,
      Temporal.Api.Workflowservice.V1.DescribeWorkerDeploymentVersionRequest,
      Temporal.Api.Workflowservice.V1.DescribeWorkerDeploymentVersionResponse

  rpc :ListDeployments,
      Temporal.Api.Workflowservice.V1.ListDeploymentsRequest,
      Temporal.Api.Workflowservice.V1.ListDeploymentsResponse

  rpc :GetDeploymentReachability,
      Temporal.Api.Workflowservice.V1.GetDeploymentReachabilityRequest,
      Temporal.Api.Workflowservice.V1.GetDeploymentReachabilityResponse

  rpc :GetCurrentDeployment,
      Temporal.Api.Workflowservice.V1.GetCurrentDeploymentRequest,
      Temporal.Api.Workflowservice.V1.GetCurrentDeploymentResponse

  rpc :SetCurrentDeployment,
      Temporal.Api.Workflowservice.V1.SetCurrentDeploymentRequest,
      Temporal.Api.Workflowservice.V1.SetCurrentDeploymentResponse

  rpc :SetWorkerDeploymentCurrentVersion,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentCurrentVersionRequest,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentCurrentVersionResponse

  rpc :DescribeWorkerDeployment,
      Temporal.Api.Workflowservice.V1.DescribeWorkerDeploymentRequest,
      Temporal.Api.Workflowservice.V1.DescribeWorkerDeploymentResponse

  rpc :DeleteWorkerDeployment,
      Temporal.Api.Workflowservice.V1.DeleteWorkerDeploymentRequest,
      Temporal.Api.Workflowservice.V1.DeleteWorkerDeploymentResponse

  rpc :DeleteWorkerDeploymentVersion,
      Temporal.Api.Workflowservice.V1.DeleteWorkerDeploymentVersionRequest,
      Temporal.Api.Workflowservice.V1.DeleteWorkerDeploymentVersionResponse

  rpc :SetWorkerDeploymentRampingVersion,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentRampingVersionRequest,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentRampingVersionResponse

  rpc :ListWorkerDeployments,
      Temporal.Api.Workflowservice.V1.ListWorkerDeploymentsRequest,
      Temporal.Api.Workflowservice.V1.ListWorkerDeploymentsResponse

  rpc :UpdateWorkerDeploymentVersionMetadata,
      Temporal.Api.Workflowservice.V1.UpdateWorkerDeploymentVersionMetadataRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkerDeploymentVersionMetadataResponse

  rpc :SetWorkerDeploymentManager,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentManagerRequest,
      Temporal.Api.Workflowservice.V1.SetWorkerDeploymentManagerResponse

  rpc :UpdateWorkflowExecution,
      Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionResponse

  rpc :PollWorkflowExecutionUpdate,
      Temporal.Api.Workflowservice.V1.PollWorkflowExecutionUpdateRequest,
      Temporal.Api.Workflowservice.V1.PollWorkflowExecutionUpdateResponse

  rpc :StartBatchOperation,
      Temporal.Api.Workflowservice.V1.StartBatchOperationRequest,
      Temporal.Api.Workflowservice.V1.StartBatchOperationResponse

  rpc :StopBatchOperation,
      Temporal.Api.Workflowservice.V1.StopBatchOperationRequest,
      Temporal.Api.Workflowservice.V1.StopBatchOperationResponse

  rpc :DescribeBatchOperation,
      Temporal.Api.Workflowservice.V1.DescribeBatchOperationRequest,
      Temporal.Api.Workflowservice.V1.DescribeBatchOperationResponse

  rpc :ListBatchOperations,
      Temporal.Api.Workflowservice.V1.ListBatchOperationsRequest,
      Temporal.Api.Workflowservice.V1.ListBatchOperationsResponse

  rpc :PollNexusTaskQueue,
      Temporal.Api.Workflowservice.V1.PollNexusTaskQueueRequest,
      Temporal.Api.Workflowservice.V1.PollNexusTaskQueueResponse

  rpc :RespondNexusTaskCompleted,
      Temporal.Api.Workflowservice.V1.RespondNexusTaskCompletedRequest,
      Temporal.Api.Workflowservice.V1.RespondNexusTaskCompletedResponse

  rpc :RespondNexusTaskFailed,
      Temporal.Api.Workflowservice.V1.RespondNexusTaskFailedRequest,
      Temporal.Api.Workflowservice.V1.RespondNexusTaskFailedResponse

  rpc :UpdateActivityOptions,
      Temporal.Api.Workflowservice.V1.UpdateActivityOptionsRequest,
      Temporal.Api.Workflowservice.V1.UpdateActivityOptionsResponse

  rpc :UpdateWorkflowExecutionOptions,
      Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionOptionsRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionOptionsResponse

  rpc :PauseActivity,
      Temporal.Api.Workflowservice.V1.PauseActivityRequest,
      Temporal.Api.Workflowservice.V1.PauseActivityResponse

  rpc :UnpauseActivity,
      Temporal.Api.Workflowservice.V1.UnpauseActivityRequest,
      Temporal.Api.Workflowservice.V1.UnpauseActivityResponse

  rpc :ResetActivity,
      Temporal.Api.Workflowservice.V1.ResetActivityRequest,
      Temporal.Api.Workflowservice.V1.ResetActivityResponse

  rpc :CreateWorkflowRule,
      Temporal.Api.Workflowservice.V1.CreateWorkflowRuleRequest,
      Temporal.Api.Workflowservice.V1.CreateWorkflowRuleResponse

  rpc :DescribeWorkflowRule,
      Temporal.Api.Workflowservice.V1.DescribeWorkflowRuleRequest,
      Temporal.Api.Workflowservice.V1.DescribeWorkflowRuleResponse

  rpc :DeleteWorkflowRule,
      Temporal.Api.Workflowservice.V1.DeleteWorkflowRuleRequest,
      Temporal.Api.Workflowservice.V1.DeleteWorkflowRuleResponse

  rpc :ListWorkflowRules,
      Temporal.Api.Workflowservice.V1.ListWorkflowRulesRequest,
      Temporal.Api.Workflowservice.V1.ListWorkflowRulesResponse

  rpc :TriggerWorkflowRule,
      Temporal.Api.Workflowservice.V1.TriggerWorkflowRuleRequest,
      Temporal.Api.Workflowservice.V1.TriggerWorkflowRuleResponse

  rpc :RecordWorkerHeartbeat,
      Temporal.Api.Workflowservice.V1.RecordWorkerHeartbeatRequest,
      Temporal.Api.Workflowservice.V1.RecordWorkerHeartbeatResponse

  rpc :ListWorkers,
      Temporal.Api.Workflowservice.V1.ListWorkersRequest,
      Temporal.Api.Workflowservice.V1.ListWorkersResponse

  rpc :UpdateTaskQueueConfig,
      Temporal.Api.Workflowservice.V1.UpdateTaskQueueConfigRequest,
      Temporal.Api.Workflowservice.V1.UpdateTaskQueueConfigResponse

  rpc :FetchWorkerConfig,
      Temporal.Api.Workflowservice.V1.FetchWorkerConfigRequest,
      Temporal.Api.Workflowservice.V1.FetchWorkerConfigResponse

  rpc :UpdateWorkerConfig,
      Temporal.Api.Workflowservice.V1.UpdateWorkerConfigRequest,
      Temporal.Api.Workflowservice.V1.UpdateWorkerConfigResponse

  rpc :DescribeWorker,
      Temporal.Api.Workflowservice.V1.DescribeWorkerRequest,
      Temporal.Api.Workflowservice.V1.DescribeWorkerResponse

  rpc :PauseWorkflowExecution,
      Temporal.Api.Workflowservice.V1.PauseWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.PauseWorkflowExecutionResponse

  rpc :UnpauseWorkflowExecution,
      Temporal.Api.Workflowservice.V1.UnpauseWorkflowExecutionRequest,
      Temporal.Api.Workflowservice.V1.UnpauseWorkflowExecutionResponse
end

defmodule Temporal.Api.Workflowservice.V1.WorkflowService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Workflowservice.V1.WorkflowService.Service
end
