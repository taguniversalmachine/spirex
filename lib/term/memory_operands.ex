defmodule Term.MemoryOperands do
  def masks() do
    [
       {:MemoryOperandsNone, 0x0}, {:MemoryOperandsVolatile, 0x1}, {:MemoryOperandsAligned, 0x2},
       {:MemoryOperandsNonTemporal, 0x4}, {:MemoryOperandsMakePointerAvailable, 0x8},
       {:MemoryOperandsMakePointerAvailableKHR, 0x8}, {:MemoryOperandsMakePointerVisible, 0x10},
       {:MemoryOperandsMakePointerVisibleKHR, 0x10}, {:MemoryOperandsNonPrivatePointer, 0x20},
       {:MemoryOperandsNonPrivatePointerKHR, 0x20}, {:MemoryOperandsaliasScopeINTELMask, 0x10000},
       {:MemoryOperandsNoaliasINTELMask, 0x2000}
    ]
  end

  def id(a) do
    element = Enum.find(masks(), fn {atom, _numeric_id} ->  a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
