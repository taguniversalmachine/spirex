defmodule Term.AccessQualifier do
  def qualifiers() do
    [
      {:AccessQualifierReadOnly, 0}, {:AccessQualifierWriteOnly, 1}, {:AccessQualifierReadWrite, 2}
    ]
  end

  def id(a) do
    element = Enum.find(qualifiers(), fn {identifier, _opcode} -> a == identifier end)
    if element == nil do
      nil
    else
      {_identifiier, opcode} = element
      opcode
    end
 end

end
