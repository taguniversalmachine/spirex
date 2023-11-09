defmodule Term.Instruction.Atomic do

  def instructions() do
    [
      {:OpAtomicLoad, 6, 227}, {:OpAtomicStore, 5, 228}, {:OpAtomicExchange, 7, 229},
      {:OpAtomicCompareExchange, 9, 230}, {:OpAtomicCompareExchangeWeak, 9,231},
      {:OpAtomicIncrement, 6, 232}, {:OpAtomicDecrement,6, 233},
      {:OpAtomicAdd, 7, 234}, {:OpAtomicSub, 7, 235}, {:OpAtomicSMin, 7, 236},
      {:OpAtomicUMin, 7, 237}, {:OpAtomicSMax, 7, 238},
      {:OpAtomicUMax, 7, 239}, {:OpAtomicAnd, 7, 240}, {:OpAtomicOr, 7, 241},
      {:OpAtomicXor, 7, 242}, {:OpAtomicFlagTestAndSet, 6, 318},
      {:OpAtomicFlagClear, 4, 319}, {:OpAtomicFMinEXT, 7, 5614},
      {:OpAtomicFMaxEXT, 7, 5615}, {:OpAtomicFAddEXT, 7, 6035}
    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {identifier, _word_count, _numeric_id} -> a == identifier end)

    if element == nil do
      nil
    else
      {_identifier, _word_count, numeric_id} = element
      numeric_id
    end

  end



end
