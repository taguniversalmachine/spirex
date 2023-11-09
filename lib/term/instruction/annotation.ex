defmodule Term.Instruction.Annotation do

  def instructions() do
    [
       {:OpDecorate, 3, 71}, {:OpMemberDecorate, 4, 72}, {:OpDecorationGroup, 2, 73},
       {:OpGroupDecorate, 2, 74}, {:OpGroupMemberDecorate, 2, 75}, {:OpDecorateId, 3, 332},
       {:OpDecorateString, 4, 5632}, {:OpMemberDecorateString, 5, 5633}
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
