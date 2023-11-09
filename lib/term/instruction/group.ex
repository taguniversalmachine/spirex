defmodule Term.Instruction.Group do

def instructions() do
  [
    {:OpGroupAsyncCopy, 9, 259}, {:OpGroupWaitEvents, 4, 260},
    {:OpGroupAll, 5, 261}, {:OpGroupAny, 5, 262}, {:OpGroupBroadcast, 6, 263},
    {:OpGroupAdd, 6, 264}, {:OpGroupFAdd, 6, 265}, {:OpGroupFMin, 6, 266},
    {:OpGroupUMin, 6, 267}, {:OpGroupSMin, 6, 268}, {:OpGroupFMax, 6, 269},
    {:OpGroupUMax, 6, 270}, {:OpGroupSMax, 6, 271}, {:OpSubgroupBallotKHR, 4,4421},
    {:OpSubgroupFirstInvocationKHR, 4, 4422}, {:OpSubgroupAllKHR,4, 4428},
    {:OpSubgroupAnyKHR, 4, 4429}, {:OpSubgroupAllEqualKHR, 4, 4430},
    {:OpGroupNonUniformRotateKHR, 6, 4431},{:OpSubgroupReadInvocartionKHR, 5, 4432},
    {:OpGroupAddNonUniformAMD, 6, 5000}, {:OpGroupFAddNonUniformAMD, 6, 5001},
    {:OpGroupFMinNonUniformAMD, 6, 5002}, {:OpGroupUMinNonUniformAMD, 6, 5003},
    {:OpGroupSMinNonUniformAMD, 6, 5004}, {:OpGroupFMaxNonUniformAMD, 6, 5005},
    {:OpGroupUMaxNonUniformAMD, 6, 5006}, {:OpGroupSMaxNonUniformAMD, 6, 5007},
    {:OpSubgroupShuffleINTEL, 5, 5571}, {:OpSubgroupShuffleDownINTEL, 6, 5572},
    {:OpSubgroupShuffleUpINTEL, 5, 5573}, {:OpSubgroupShuffleXorINTEL, 5, 5574},
    {:OpSubgroupBlockReadINTEL, 4, 5575}, {:OpSubgroupBlockWriteINTEL, 3, 5576},
    {:OpSubgroupImageBlockReadINTEL, 5, 5577}, {:OpSubgroupImageBlockWriteINTEL, 4, 5578},
    {:OpSubgroupImageMediaBlockReadINTEL, 7, 5580}, {:OpSubgroupImageMediaBlockWriteINTEL, 6, 5581},
    {:OpGroupMulKHR, 6, 6401}, {:OpGroupMulKHR, 6, 6401},{:OpGroupFMulKHR, 6, 6402},
    {:OpGroupBitwiseAndKHR, 6, 6403}, {:OpGroupBitwiseOrKHR, 6, 6404},
    {:OpGroupBitwiseXorKHR, 6, 6405}, {:OpGrouplogicalAndKHR, 6, 6405},
    {:OpGroupLogicalOrKHR, 6, 6407}, {:OpGroupLogicalXorKHR, 6, 6408}
  ]
end

def id(a) do
  element = Enum.find(instructions(), fn {identifier, _word_count, _opcode} -> identifier == a end)

  if element == nil do
    nil
  else
    {_identifier, _word_count, opcode} = element
    opcode
  end
end

end
