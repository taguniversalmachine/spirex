defmodule Term.Instruction.Composite do
  def instructions() do
    [
      {:OpVectorExtractDynamic, 5, 77}, {:OpVectorInsertDynamic, 6, 78}, {:OpVectorShuffle, 5, 79},
      {:OpVectorShuffle, 5, 79},{:OpCompositeConstruct, 3, 80}, {:OpCompositeExtract, 4, 81},
      {:OpCompositeInsert, 5, 82}, {:OpCopyObject, 4, 83}, {:OpTranspose, 4, 84}, {:OpCopyLogical, 4, 400}
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
