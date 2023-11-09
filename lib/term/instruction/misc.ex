defmodule Term.Instruction.Misc do

def instructions() do
  [
  #  Word Count, OpCode, Results, Operands
    {:OpNop, 1, 0}, {:OpUndef, 3, 1}, {:OpSizeOf, 4, 321}, {:OpAssumeTrueKHR, 2, 5630},
    {:OpSizeOf, 4, 321}, {:OpAssumeTrueKHR, 2, 5630}, {:OpExpectKHR, 5, 5631}
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
