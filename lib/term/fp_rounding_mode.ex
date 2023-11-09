defmodule Term.FPRoundingMode do
  def modes() do
    [
      {:FPRoundingModeRTE, 0}, {:FPRoundingModeRTZ, 1}, {:FPRoundingModeRTP, 2}, {:FPRoundingModeRTN, 3}
    ]
  end

  def id(a) do
    element = Enum.find(modes(), fn {atom, _numeric_identifier} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_identifier} = element
      numeric_identifier
    end
  end
end
