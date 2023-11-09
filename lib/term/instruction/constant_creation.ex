defmodule Term.Instruction.ConstantCreation do

def constants() do
  [
    {:OpConstantTrue, 3, 41}, {:OpConstantFalse, 3, 42}, {:OpConstant, 4, 43}, {:OpConstantComposite, 3, 44},
    {:OpConstantSampler, 6, 45}, {:OpConstantNull, 3, 46}, {:OpSpecConstantTrue, 3, 48},
    {:OpSpecConstantFalse, 3, 49}, {:OpSpecConstant, 4, 50}, {:OpSpecConstantComposite, 3, 51},
    {:OpSpecConstantOp, 4, 52}, {:OpConstantCompositeContinuedINTEL, 1, 6091}, {:OpSpecConstantCompositeContinuedINTEL, 1, 6092},

  ]
end

def id(a) do
  element = Enum.find(constants(), fn {atom, _word_count, _opcode} -> atom == a end)
  if element == nil do
    nil
  else
    {_atom, _word_count, opcode} = element
    opcode
  end
end

end
