defmodule Term.KernelEnqueue do

def flags() do
  [
    {:KernelEnqueueNoWait, 0}, {:KernelEnqueueWaitKernel, 1}, {:KernelEnqueueWaitWorkGroup, 2}
  ]
end

def id(a) do
  element = Enum.find(flags(), fn {atom, _numeric_id} -> atom == a end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end

end
