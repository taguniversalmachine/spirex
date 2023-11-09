defmodule Term.SamplerFilterMode do
  def modes() do
    [{:SamplerFilterModeNearest, 0}, {:SamplerFilterModeLinear, 1}]
  end


  def id(a) do
    element = Enum.find(modes(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end
end
