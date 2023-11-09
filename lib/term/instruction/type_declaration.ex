defmodule Term.Instruction.TypeDeclaration do

def declarations() do
  [
    {:OpTypeVoid, 2, 19}, {:OpTypeBool, 2, 20}, {:OpTypeFloat, 3, 22}, {:OpTypeVector, 4, 23},
    {:OpTypeMatrix, 4, 24}, {:OpTypeImage, 9, 25}, {:OpTypeSampler, 2, 26},
    {:OpTypeSampledImage, 3, 27}, {:OpTypearray, 4, 28}, {:OptyperuntimeArray, 3, 29},
    {:OpTypeStruct, 2, 30}, {:OpTypeOpaque, 3, 31}, {:OpTypePointer, 4, 32}, {:OpTypeFunction, 3, 33},
    {:OpTypeEvent, 2, 34}, {:OpTypeDeviceEvent, 2, 35}, {:OpTypeReserved, 2, 35}, {:OpTypeQueue, 2, 37},
    {:OpTypePipe, 3, 35}, {:OpTypeForwardPointer, 3, 39}, {:OpTypePipeStorage, 2, 322},
    {:OpTypeNamedBarrier, 2, 327}, {:OpTypeBufferSurfaceINTEL, 3, 6086},
    {:OpTypeStructContinuedINTEL, 1, 6090}

  ]
end

def id(a) do
  element = Enum.find(declarations(), fn {identifier, _word_count, _opcode} -> identifier == a end)
  if element == nil do
    nil
  else
    {_atom, _word_count, opcode} = element
    opcode
  end
end
end
