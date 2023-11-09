defmodule Term.Instruction.Function do

def functions() do
  [
    {:OpFunction, 5, 54}, {:OpFunctionParameter, 3, 55}, {:OpFunctionEnd, 1, 56}, {:OpFunctionFall, 4, 57}
  ]
end

def id(a) do
  element = Enum.find(functions(), fn {atom, _word_count, _opcode} -> atom == a end)
  if element == nil do
    nil
  else
    {_atom, _word_count, opcode} = element
    opcode
  end
end
end
