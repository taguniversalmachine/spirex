defmodule Term.Instruction.Extension do

def extensions() do
  [
    {:OpExtension, 2, 10}, {:OpExtInst, 5, 12}
  ]
end


def id(a) do
  element = Enum.find(extensions(), fn {atom, _word_count, _opcode} -> atom == a end)
  if element == nil do
    nil
  else
    {_atom, _word_count, opcode} = element
    opcode
  end
end
end
