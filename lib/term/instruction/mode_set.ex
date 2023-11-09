defmodule Term.Instruction.ModeSet do
  def sets() do
    [
      {:OpMemoryModel, 3, 14}, {:OpEntryPoint, 4, 15},
      {:OpExecutionMode, 3, 16}, {:OpCapability, 2, 17}, {:OpExecutionModeId, 3, 331}
    ]
  end

  def id(a) do
    element = Enum.find(sets(), fn {atom, _word_count, _opcode} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, _word_count, opcode} = element
      opcode
    end
  end
end
