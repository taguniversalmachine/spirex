defmodule Term.GroupOperation do
  def operations() do
    [
      {:GroupOperationReduce, 0}, {:GroupOperationInclusiveScan, 1}, {:GroupOperationEsclusiveScan, 2},
      {:GroupOperationClusteredReduce, 3}, {:GroupOperationPartitionedReduceNV, 6},
      {:GroupOperationPartitionedInclusiveScanNV, 7}, {:GroupOperationPartitionedExclusiveScanNV, 8}
    ]
  end

  def id(a) do
     element = Enum.find(operations(), fn {atom, _numeric_identifier} -> atom == a end)
     if element == nil do
      nil
     else
      {_atom, numeric_identifier} = element
      numeric_identifier
    end

  end

end
