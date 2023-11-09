defmodule Term.ImageChannelDataType do
  def dataTypes() do
  [
    {:ImageChannelDataTypeSnormint8, 0},{:ImageChannelDataTypeSnormInt16, 1}, {:ImageChannelDataTypeUnormInt8, 2},
    {:ImageChannelDataTypeUnormInt16, 3}, {:ImageChannelDataTypeUnormShort565, 4}, {:ImageChannelDataTypeUnormShort555, 5},
    {:ImageChannelDataTypeUnormInt101010, 6}, {:ImageChannelDataTypeSignedInt8, 7}, {:ImageChannelDataTypeSignedInt16, 8},
    {:ImageChannelDataTypeSignedInt32, 9}, {:ImageChannelDataTypeUnsignedInt8, 10}, {:ImageChannelDataTypeUnsignedInt16, 11},
    {:ImageChannelDataTypeUnsignedInt32, 12}, {:ImageChannelDataTypeHalfFloat, 13}, {:ImageChannelDataTypeFloat, 14},
    {:ImageChannelDataTypeUnormint24, 15}, {:ImageChannelDataTypeUnormint101010, 16}
  ]
  end

  def id(a) do
    element = Enum.find(dataTypes(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
