defmodule Term.Instruction.Debug do

  def instructions() do
    [
      {:OpSourceContinued, 2, 2}, {:OpSource, 3, 3}, {:OpSourceExtension, 2, 4},
      {:OpName, 3, 5}, {:OpMemberName, 4, 6}, {:OpString, 3, 7}, {:OptLine, 4, 8},
      {:OpModuleProcessed, 2, 330}
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
