defmodule Term.ReservedFragmentShadingRate do
  def rates() do
    [
      {:ReservedFragmentShadingRateNone, 0x0}, {:ReservedFragmentShadingRateVertical2Pixels, 0x1},
      {:ReservedFragmentShadingRateVertical4Pixels, 0x2}, {:ReservedFragmentShadingRateHorizontal2Pixels, 0x4},
      {:ReservedFragmentShadingRateHorizontal4Pixels, 0x6}
    ]
  end

  def id(a) do
    element = Enum.find(rates(), fn {atom, _numeric_id} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
