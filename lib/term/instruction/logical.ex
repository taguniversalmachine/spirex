defmodule Term.Instruction.Logical do

def instructions() do
   [
    {:OpAny, 4, 154}, {:OpAll, 4, 155}, {:OpIsNan, 4, 156}, {:OpIsInf, 4, 157},
    {:OpIsFinite, 4, 158}, {:OpIsNormal, 4, 159}, {:OpSignBitSet, 4, 160}, {:OpLessOrGreater, 5, 161},
    {:OpOrdered, 5, 162}, {:OpUnordered, 5, 163}, {:OpLogicalEqual, 5, 164}, {:OpLogicalNotEqual, 5, 165},
    {:OpLogicalOr, 5, 166}, {:OpLogicalAnd, 5, 167}, {:OpLogicalNot,4, 168}, {:OpSelect,6, 169},
    {:OpEqual, 5, 170}, {:OpNotEqual, 5, 171}, {:OpUGreaterThan, 5, 172}, {:OpSGreaterThan, 5, 173},
    {:OpUGreaterThanEqual, 5, 174}, {:OpSGreaterThanEqual,5, 175}, {:OpULessThan, 5, 176},
    {:OpSLessThan, 5, 177}, {:OpULessThanEqual, 5, 178}, {:OpLessThanEqual, 5, 179}, {:OpFOrdEqual, 5, 180},
    {:OpFUnordEqual,5, 181}, {:OpFOrdNotEqual, 5, 182}, {:OpFUnordNotEqual,5, 183}, {:OpFOrdLessThan, 5, 184},
    {:OpFUnordLessThan, 5, 185}, {:OpFOrdGreaterThan,5, 186}, {:OpFUnordGreaterThan, 5, 187},
    {:OpFOrdLessThanEqual, 5, 188}, {:OpFUnordLessThanEqual, 5, 189}, {:OpFOrdGreaterThanEqual,5, 190},
    {:OpFUnordGreaterThanEqual,5, 191}
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
