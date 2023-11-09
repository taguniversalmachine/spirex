defmodule Term.Instruction.Instruction do
  defstruct opcode: 0, results: [], literal: [], operand: [], word_count: 0, instruction: [],
            decoration: [], object: [], memory_object: [], memory_object_declaration: [],
            intermediate_object: [], intermediate_value: [], intermediate_result: [],
            constant_instruction: []
end
