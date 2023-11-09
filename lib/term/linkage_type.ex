defmodule Term.LinkageType do
  def types() do
    [
      {:LinkageTypeExport, 0}, {:LinkageTypeImport, 1}, {:LinkageTypeLinkOnceODR, 2}
    ]
  end

  def id(a) do
    element = Enum.find(types(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end
end
