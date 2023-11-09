defmodule Term.Instruction.Reserved do
  def instructions() do
     [
      {:OpTraceRayKHR, 1, 444}, {:OpExecuteCallableKHR, 4, 4447},
      {:OpConvertUToAccelerationStructureKHR, 4, 4447},
      {:OpIgnoreIntersectionKHR, 1, 4448}, {:OpTerminateRayKHR, 1, 4449},
      {:OpTypeRayQueryKHR, 2, 4472}, {:OpRayQueryInitializeKHR, 9, 4473},
      {:OpRayQueryTerminateKHR, 2, 4474}, {:OpRayQueryGenerateIntersectionKHR, 3, 4475},
      {:OpRayQueryConfirmIntersectionKHR, 2, 4476}, {:OpRayQueryProceedKHR, 4, 4477},
      {:OpRayQueryGetIntersectionTypeKHR, 5, 4479}, {:OpFragmentMaskFetchAMD, 5, 5011},
      {:OpFragmentFetchAMD, 6, 5012}, {:OpReadClockKHR, 4, 5056},
      {:OpWritePackedPrimitiveIndices4x8NV, 3, 5299}, {:OpReportIntersectionNV, 5, 5334},
      {:OpIgnoreIntersectionNV, 1, 5335}, {:OpTerminateRayNV, 1, 5336},
      {:OpTraceNV, 1, 533}, {:OpTraceMotionNV, 1, 533} #TODO
     ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {identifier, _word_count, _opcode} -> identifier == a end)
    if element == nil do
      nil
    else
      {_atom, _word_count, opcode} = element
      opcode
    end
  end
end
