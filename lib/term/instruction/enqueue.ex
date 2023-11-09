defmodule Term.Instruction.Enqueue do
  def instructions() do
    [
      {:OpEnqueueMarker, 7, 291}, {:OpEnqueueKernel, 13, 292},
      {:OpGetKernelNDRangeSubgroupCount, 8, 293},
      {:OpGetKernelNDrangeMaxSubGroupSize, 8, 294},
      {:OpGetKernelWorkGroupSize, 7, 295},
      {:OpGetKernelPreferredWorkGroupSizeMultiple, 7, 296},
      {:OpRetainEvent, 2, 297}, {:OpReleaseEvent, 2, 298},
      {:OpCreateUserEvent, 3, 299},{:OpIsValidEvent, 4, 300},
      {:OpSetUserEventState, 3, 301}, {:OpCaptureEventProfilingInfo, 4, 302},
      {:OpGetDefaultQueue, 3, 303}, {:OpBuildNDRange, 6, 304},
      {:OpGetKernelLocalSizeForSubgroupCount, 8, 325},
      {:OpGetKernelMaxNumSubgroups, 7, 326}
    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {identifier, _word_count, _numeric_id} -> a == identifier end)

    if element == nil do
      nil
    else
      {_identifier, _word_count, numeric_id} = element
      numeric_id
    end
  end


end
