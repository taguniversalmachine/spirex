defmodule Term.FPFastMathMode do
  def masks() do
    [
      {:FPFastMathModeNone, 0x0}, {:FPFastMathModeNotNaN, 0x1}, {:FPFastMathModeNotInf, 0x2}, {:FPFastMathModeNSZ, 0x4},
      {:FPFastMathModeAllowRecip, 0x8},{:FPFastMathModeFast, 0x10}, {:FPFastMathModeAllowContractFastINTEL, 0x10000},
      {:FPFastMathModeAllowReassocINTEL, 0x200000}
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
