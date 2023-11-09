defmodule Term.SamplerImageFormat do
  def formats() do
    [{:SamplerImageFormatRgba32f, 1}, {:SamplerImageFormatRgba16f, 2}, {:SamplerImageFormatR32f, 3},
     {:SamplerImageFormatRgba8, 4}, {:SamplerImageFormatRgba8Snorm, 5}, {:SamplerImageFormatRg32f, 6},
     {:SamplerImageFormatRg16f, 7}, {:SamplerImageFormatR11fG11B10f,8}, {:SamplerImageFormatR16f, 9},
     {:SamplerImageFormatRgba16, 10}, {:SamplerImageFormatRgb10A2, 11}, {:SamplerImageFormatRg16,12},
     {:SamplerImageFormatRg8,13}, {:SamplerImageFormatR16, 14}, {:SamplerImageFormatR8, 15},
     {:SamplerImageFormatRgba16Snorm, 16}, {:SamplerImageFormatRg16Snorm, 17}, {:SamplerImageFormatRg8Snorm, 18},
     {:SamplerImageFormatR16Snorm,19}, {:SamplerImageFormatR8Snorm, 20}, {:SamplerImageFormatRgba32i, 21},
     {:SamplerImageFormatRgba16i, 22}, {:SamplerImageFormatRgba8i, 23}, {:SamplerImageFormatR32i, 24},
     {:SamplerImageFormatRg32i, 25}, {:SamplerImageFormatRg16i, 26}, {:SamplerImageFormatRg8i, 27},
     {:SamplerImageFormatR16i, 28}, {:SamplerImageFormatR8i, 29}, {:SamplerImageFormatRgba32ui, 30},
     {:SamplerImageFormatRgba16ui, 31}, {:SamplerImageFormatRgba8ui, 32}, {:SamplerImageFormatR32ui, 33},
     {:SamplerImageFormatRgb10a2ui, 34}, {:SamplerImageFormatRg16ui, 35}, {:SamplerImageFormatRg16ui, 36},
     {:SamplerImageFormatRg8ui, 37}, {:SamplerImageFormatR16ui, 38}, {:SamplerImageFormatR8ui, 39},
     {:SamplerImageFormatR64ui, 40}, {:SamplerImageFormatR64i, 41}
    ]
  end

  def id(a) do
    element = Enum.find(formats(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
