defmodule Term.Instruction.Derivative do

def instructions() do
  [
    {:OpDPdx, 4, 207}, {:OpDPdy, 4, 208}, {:OpFwidth, 4, 209}, {:OpDPdxFine, 4, 210}, {:OpDPdyFine, 4, 211},
    {:OpFwidthFine, 4, 212}, {:OpDPdxCoarse, 4, 213}, {:OpDPdyCoarse, 4, 214}, {:OpFwidthCoarse, 4, 215}
  ]
end

def id(a) do
   element = Enum.find(instructions(), fn {identifier, _word_count, _opcode} -> identifier == a end)
   if element == nil do
     nil
   else
     {_identifier, _word_count, opcode} = element
     opcode
   end
end


end
