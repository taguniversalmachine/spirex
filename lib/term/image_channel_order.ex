defmodule Term.ImageChannelOrder do

def orders() do
  [{:ImageChannelOrderR, 0}, {:ImageChannelOrderA, 1}, {:ImageChannelOrderRG, 2}, {:ImageChannelOrderRA, 3},
  {:ImageChannelOrderRGB, 4}, {:ImageChannelOrderRGBA, 5}, {:ImageChannelOrderBGRA, 6}, {:ImageChannelOrderARGB, 7},
  {:ImageChannelOrderIntensity, 8}, {:ImageChannelOrderLuminance, 9}, {:ImageChannelOrderRx, 10}, {:ImageChannelOrderRGx,11},
  {:ImageChannelOrderRGBx, 12}, {:ImageChannelOrderDepth, 13}, {:ImageChannelOrderDepthStencil, 14},
  {:ImageChannelOrdersRGB, 15}, {:ImageChannelOrdersRGBx, 16}, {:ImageChannelOrdersRGBA, 17}, {:ImageChannelOrdersBGRA, 18},
  {:ImageChannelOrderABGR, 19}
]
end

def id(a) do
  element = Enum.find(orders(), fn {atom, _} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end

end
