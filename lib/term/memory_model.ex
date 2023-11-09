defmodule Term.MemoryModel do
  def models() do
    [{:Simple, 0}, {GLSL450, 1}, {:OpenCL, 2}, {:Vulcan, 3}, {:VulkanKHR, 3}]
  end


  def id(a) do
    element = Enum.find(models(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
