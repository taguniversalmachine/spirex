defmodule Terms.ImageOperand do

end
defmodule Term.ImageOperand do
  def operands() do
    [
      {:ImageOperandBias, 0x1}, {:ImageOperandLod, 0x2}, {:ImageOperandGrad, 0x4}, {:ImageOperandConstOffset, 0x8},
      {:ImageOperandOffset, 0x10}, {:ImageOperandConstOffsets, 0x20}, {:ImageOperandSample, 0x40},
      {:ImageOperandMinLod, 0x80}, {:ImageOperandMakeTexelAvailable, 0x100}, {:ImageOperandMakeTexelAvailableKHR, 0x100},
      {:ImageOperandMakeTexelVisible, 0x200}, {:ImageOperandMakeTexelVisibleKHR, 0x400},
      {:ImageOperandNonPrivateTexel, 0x400}, {:ImageOperandVolatileTexel, 0x800}, {:ImageOperandVolatileTexelKHR, 0x800},
      {:ImageOperandSignExtend, 0x1000},
      {:ImageOperandZeroExtend, 0x2000}, {:ImageOperandNontemporal, 0x4000}, {:ImageOperandOffsets, 0x10000}
    ]
  end

  def id(a) do
    element = Enum.find(operands(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end
end
