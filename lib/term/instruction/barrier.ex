defmodule Term.Instruction.Barrier do

  def instructions() do
     [
      {:OpControlBarrier, 4, 224}, {:OpMemoryBarrier, 3, 225},
      {:OpNamedBarrierInitialize, 4, 328}, {:OpMemoryNamedBarrier, 4, 329},
      {:OpControlBarrierArriveINTEL, 4, 6142}, {:OpControlBarrierWaitINTEL, 4, 6143}
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
