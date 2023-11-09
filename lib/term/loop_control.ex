defmodule Term.LoopControl do
  def masks() do
    [
      {:LoopControlNone, 0x0}, {:LoopControlUnroll, 0x1}, {:LoopControlDontUnroll, 0x2}, {:LoopControlDependencyInfinite, 0x4},
      {:LoopControlDependencyLength, 0x8}, {:LoopControlMinIterations, 0x10}, {:LoopControlMaxIterations, 0x20},
      {:LoopControlIterationMultiple, 0x40}, {:LoopControlPeelCount, 0x80}, {:LoopControlPartialCount, 0x100},
      {:LoopControlInitiationIntervalINTEL, 0x10000}, {:LoopControlMaxConcurrencyINTEL, 0x20000},
      {:LoopControlDependencyArrayINTEL, 0x40000}, {:LoopControlPipelineEnableINTEL, 0x80000},
      {:LoopControlLoopCoalesceINTEL, 0x100000}, {:LoopControlMaxInterleavingINTEL, 0x200000},
      {:LoopControlSpeculatedIterationsINTEL, 0x40000}, {:LoopControlNoFusionIntel, 0x800000}
    ]
  end

  def id(a) do
    element = Enum.find(masks(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end


end
