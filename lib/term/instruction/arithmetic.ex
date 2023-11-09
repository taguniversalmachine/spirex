defmodule Term.Instruction.Arithmetic do

def instructions() do
  [
    {:OpSNegate, 4, 126}, {:OpFNegate, 4, 127}, {:OpIAdd, 5, 128}, {:OpFAdd, 5, 129}, {:OpISub, 5, 130}, {:OpFSub, 5, 131},
    {:OpIMul, 5, 132}, {:OpFMul, 5, 133}, {:OpUDiv, 5, 134}, {:OpSDiv, 5, 135}, {:OpFDiv, 5, 136},
    {:OpUMod,5, 137}, {:OpSRem, 5, 138}, {:OpSMod,5, 139}, {:OpFRem, 5, 140}, {:OpFMod, 5, 141},
    {:OpVectorTimesScalar,5, 142}, {:OpMatrixTimesScalar, 5, 143}, {:OpVectorTimesMatrix, 5, 144},
    {:OpMaxtrixTimesVector, 5, 145}, {:OpMatrixTimesMatrix, 5,146}, {:OpOuterProduct, 5, 147}, {:OpDot, 5, 148},
    {:OpAddCarry, 5, 149}, {:OpISubBorrow, 5, 150}, {:OpUMulExtended, 5, 151}, {:OpSMulExtended, 5, 152},
    {:OpSDot, 5, 4450}, {:OpUDot, 5, 4451}, {:OpSUDot, 5, 4452}, {:OpSDotAccSat, 6, 4453},
    {:OpUDotAccSat, 6, 4454}, {:OpSUDotAccSatK, 6, 4455}

  ]
end

def id(a) do
  element = Enum.find(instructions(), fn {atom, _word_count, _opcode} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, _word_count, opcode} = element
    opcode
  end
end


end
