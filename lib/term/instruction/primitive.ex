defmodule Term.Instruction.Primitive do

  def instructions() do
    [
      {:OpEmitVertex, 1, 218}, {:OpEndPrimitive, 1, 219},
      {:OpEmitStreamVertex, 2, 220}, {:OpEndStreamPrimitive, 2, 221}
    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {identifier, _word_cound, _numeric_id} -> a == identifier end)
    if element == nil do
      nil
    else
      {_identifier, _word_count, numeric_id} = element
      numeric_id
    end

  end


end
