defmodule Term.Instruction.Bit do

  def instructions() do
    [
      {:OpShiftRightLogical, 5, 194}, {:OpShiftRightArithmetic, 5, 195}, {:OpShiftLeftLogical, 5, 196},
      {:OpBitwiseOr, 5, 197}, {:OpBitwiseXor, 5, 198}, {:OpBitwiseAnd, 5, 199}, {:OpNot, 4, 200},
      {:OpBitFieldInsert, 7, 201}, {:OpBitFieldSExtract, 6, 202}, {:OpBitFieldUExtract, 6, 203},
      {:OpBitReverse, 4, 204}, {:OpBitCount, 4, 205}

    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {atom, _word_count, _opcode} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, _word_count, opcode} = element
      opcode
    end
  end


end
