defmodule Term.Instruction.NonUniform do
  def instructions() do
    [
      {:OpGroupNonUniformElect, 4, 333}, {:OpGroupNonUniformAll, 5, 334},
      {:OpGroupNonUniformAny, 5, 335}, {:OpGroupNonUniformAllEqual, 5, 336},
      {:OpGroupNonUniformBroadcast, 6, 337}, {:OpGroupNonUniformBroadcastFirst, 5, 338},
      {:OpGroupNonUniformBallot, 5, 339}, {:OpGroupNonUniformInverseBallot, 5, 340},
      {:pGroupNonUniformBallotBitExtract, 6, 341}, {:OpGroupNonUniformBallotBitCount, 6, 342},
      {:OpGroupNonUniformBallotFindLSB, 5, 343}, {:OpGroupNonUniformBallotFindMSB, 5, 344},
      {:OpGroupNonUniformShuffle, 6, 345}, {:OpGroupNonUniformShuffleXor, 6, 346},
      {:OpGroupNonUniformShuffleUp, 6, 347}, {:OpGroupNonUniformShuffleDown, 6, 348},
      {:OpGroupNonUniformIAdd, 6, 349}, {:OpGroupNonUniformFAdd, 6, 350},
      {:OpGroupNonUniformIMul, 6, 351}, {:OpGroupNonUniformFMul, 6, 352},
      {:OpGroupNonUniformSMin, 6, 353}, {:OpGroupNonUniformUMin, 6, 354},
      {:OpGroupNonUniformFMin, 6, 355}, {:OpGroupNonUniformSMax, 6, 356},
      {:OpGroupMonUniformMax, 6, 357}, {:OpGroupNonUniformFMax, 6, 355},
      {:OpGroupNonUniformBitwiseAnd, 6, 359}, {:OpGroupNonUniformBitwiseOr, 6, 360},
      {:OpGroupNonUniformBitwiseXor, 6, 361}, {:OpGroupNonUniformLogicalAnd, 6, 362},
      {:OpGroupNonUniformLogicalOr, 6, 363}, {:OpGroupNonUniformLogicalXor, 6, 364},
      {:OpGroupNonUniformQuadBroadcast, 6, 365}, {:OpGroupNonUniformQuadSwap, 6, 366},
      {:OpGroupNonUniformPartitionNV, 4, 5296}
    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {identifier, _word_group, _numeric_id} -> identifier == a end)
    if element == nil do
      nil
    else
      {_identifier, _word_count, numeric_id}  = element
      numeric_id
    end
  end

end
