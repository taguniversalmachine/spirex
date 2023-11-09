defmodule Term.FunctionControl do
  def masks() do
    [
      {:FunctionControlNone, 0x0}, {:FunctionControlInline, 0x1}, {:FunctionControlPure, 0x4},
      {:FunctionControlConst, 0x8}, {:FunctionControlOptionNoneINTEL, 0x10000}
    ]
  end

  def id(a) do
    element = Enum.find(masks(), fn {atom, _mask} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, mask} = element
      mask
    end
  end

end
