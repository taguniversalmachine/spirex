defmodule Term.KernelProfilingInfo do
  def masks() do
    [
      {:KernelProfilingInfoNone, 0x0}, {:KernelProfilingInfoCmdExecTime, 0x1}
    ]
  end

  def id(a) do
    element = Enum.find(masks(), fn {atom, _numeric_id} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
