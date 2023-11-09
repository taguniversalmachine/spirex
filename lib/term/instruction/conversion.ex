defmodule Term.Instruction.Conversion do
  def instructions() do
    [
      {:OpConvertFToU, 4, 109}, {:OpConvertFToS, 4, 110}, {:OpConvertSToF, 4, 111}, {:OpconvertUToF, 4, 112},
      {:OpUConvert, 4, 113}, {:OpSConvert, 4, 114}, {:OpFConvert, 4, 115}, {:OpQuantizeToF16, 4, 115},
      {:OpConvertPtrToU, 4, 117}, {:OpSatConvertSToU, 4, 118}, {:OpSatConvertUToS, 4, 119},
      {:OpConvertUToPtr, 4, 120}, {:OpPtrCastToGeneeric, 4, 121}, {:OpGenericCastToPtr, 4, 122},
      {:OpGenericCastToPtrExplicit, 5, 123}, {:OpGenericCastToPtrExplicit, 5, 123}, {:OpBitcast, 4, 124}
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
