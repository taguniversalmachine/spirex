defmodule Term.MemorySemantics do



def masks() do
  [
    {:MemorySemanticsNone, 0x0}, {:MemorySemanticsAcquire, 0x2}, {:MemorySemanticsRelease, 0x4},
    {:MemorySemanticsAcquireRelease, 0x8}, {:MemorySemanticsSequentiallyConsistent, 0x10},
    {:MemorySemanticsUniformMemory, 0x40}, {:MemorySemanticsSubgroupMemory, 0x80},
    {:MemorySemanticsWorkgroupMemory, 0x100}, {:MemorySemanticsCrossWorkgroupMemory, 0x200},
    {:MemorySemanticsAtomicCounterMemory, 0x400}, {:MemorySemanticsImageMemory, 0x800},
    {:MemorySemanticsOutputMemory, 0x1000}, {:MemorySemanticsOutputMemoryKHR, 0x1000},
    {:MemorySemanticsMakeAvailable, 0x2000}, {:MemorySemanticsMakeAvailableKHR, 0x2000},
    {:MemorySemanticsMakeVisible, 0x4000}, {:MemorySemanticsMakeVisibleKHR, 0x4000},
    {:MemorySemanticsVolatile, 0x8000}
  ]
end

def id(a) do
   element = Enum.find(masks(), fn {atom, _} -> a == atom end)
   if element == nil do
      nil
   else
    {_atom, numeric_identifier} = element
    numeric_identifier
   end
end

end
