defmodule Term.Instruction.Pipe do

  def instructions() do
    [
      {:OpRePipe, 7, 274}, {:OpWritePipe, 7, 275}, {:OpReservedReadPipe, 9, 276},
      {:OpReservedWritePipe, 9, 277}, {:OpReserveReadPipePackets, 7, 278},
      {:OpReserveWritePipePackets, 7, 279}, {:OpCommitReadPipe, 7, 280},
      {:OpCommitWritePipe, 5, 281}, {:OpIsValidReserveId, 4, 282}, {:OpGetNumPipePackets, 6, 283},
      {:OpGetMaxPipePackets,6, 284}, {:OpGroupReserveReadPipePackets, 8, 285},
      {:OpGroupReserveWritePipePackets, 8, 286}, {:OpGroupCommitReadPipe, 6, 287},
      {:OpGroupCommitWritePipe, 6, 288}, {:OpConstantPipeStorage, 6, 323},
      {:OpCreatePipeFromPipeStorage, 4, 324}, {:OpReadPipeBlockingINTEL, 5, 5946},
      {:OpWritePipeBlockingINTEL, 5, 5947}

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
