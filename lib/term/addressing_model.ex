defmodule Term.AddressingModel do
   def addressingModels() do
     [{:Logical, 0}, {:Physical32, 1}, {:Physical64, 2}, {:PhysicalStorageBuffer64, 5348},
      {:PhysicalStorageBuffer64EXT, 5348}]
   end

   def id(a) do
      element = Enum.find(addressingModels(), fn {atom, _opcode} -> a == atom end)
      if element == nil do
        nil
      else
        {_atom, opcode} = element
        opcode
      end
   end
end
