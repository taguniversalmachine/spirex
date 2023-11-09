defmodule Term.SourceLanguage do

  def languages() do
    [{:langUnknnown,0}, {:langESSL, 1}, {:langGLSL, 2}, {:langOpenCL_C, 3}, {:langOpenCL_CPP, 4},
     {:langHLSL, 5}, {:langCPP_for_OpenCL, 6}, {:langSYCL, 7}]
  end

  def id(a) do
    element = Enum.find(languages(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
