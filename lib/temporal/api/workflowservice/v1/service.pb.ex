defmodule Temporal.Api.Workflowservice.V1.WorkflowService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "temporal.api.workflowservice.v1.WorkflowService",
    protoc_gen_elixir_version: "0.12.0"

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

  rpc :GetWorkerTaskReachability,
      Temporal.Api.Workflowservice.V1.GetWorkerTaskReachabilityRequest,
      Temporal.Api.Workflowservice.V1.GetWorkerTaskReachabilityResponse

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
end

defmodule Temporal.Api.Workflowservice.V1.WorkflowService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Workflowservice.V1.WorkflowService.Service
end