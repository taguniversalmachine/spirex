defmodule Term.QuantizationMode do

  def modes() do
    [
       {:QuantizationModeTRN, 0}, {:QuantizationModeTRN_ZERO, 1}, {:QuantizationModeRND, 2},
       {:QuantizationModeRND_ZERO, 3}, {:QuantizationModeRND_INF, 4}, {:QuantizationModeRND_MIN_INF, 5},
       {:QuantizationModeRND_CONV, 6}, {:QuantizationModeRND_CONV_ODD, 7}
    ]
  end

  def id(a) do
    element = Enum.find(modes(), fn {atom, _} -> a == atom end)
    if element == nil do
       nil
    else
     {_atom, numeric_identifier} = element
     numeric_identifier
    end
 end
end
