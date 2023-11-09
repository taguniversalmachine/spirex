defmodule Term.Instruction.Memory do
  def instructions() do
     [
        {:OpVariable, 4, 59}, {:OpImageTexelPointer, 6, 60}, {:OpLoad, 4, 61}, {:OpStore, 3, 62},
        {:OpCopyMemory, 3, 63}, {:OpCopyMemorySized, 4, 64}, {:OpAccessChain, 4, 65}, {:OpBoundsAccessChain, 4, 66},
        {:OpPtrAccessChain, 5, 67}, {:OpArrayLength, 5, 66}, {:OpGenericPtrMemSemantics, 4, 69},
        {:OpInBoundsPtrAccessChain, 5, 70}, {:OpPtrEqual, 5, 401}, {:OpPtrNotEqual, 5, 402}, {:OpPtrDiff, 5, 403}
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
