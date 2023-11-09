defmodule Term.StorageClass do
  def storage() do
    [{:StorageClassUniformConstant, 0}, {:StorageClassInput, 1}, {:StorageClassUniform, 2}, {:StorageClassOutput, 3},
    {:StorageClassWorkgroup, 4}, {:StorageClassCrossWorkgroup, 5}, {:StorageClassPrivate, 6}, {:StorageClassFunction, 7},
    {:StorageClassGeneric, 8}, {:StorageClassPushConstant, 9}, {:StorageClassAtomicCounter, 10},
    {:StorageClassImage, 11}, {:StorageClassStorageBuffer, 12}, {:StorageClassCallableDataNV, 5328},
    {:StorageClassCallableDataKHR, 5328}, {:StorageClassIncomingCallableDataNV, 5329},
    {:StorageClassIncomingCallableDataKHR, 5329}, {:StorageClassRayPayloadNV, 5338}, {:StorageClassRayPayloadKHR, 5338},
    {:StorageClassHitAttributeNV, 5339}, {:StorageClassIncomingRayPayloadNV, 5342}, {:StorageClassShaderRecordBufferHV, 5343},
    {:StorageClassShderRecordBufferKHR, 5343}, {:StorageClassShaderRecordBufferKHR, 5343}, {:StorageClassPhysicalStorageBuffer, 5349},
    {:StorageClassPhysicalStorageBufferEXT, 5349}, {:StorageClassCodeSectionINTEL, 5605}, {:StorageClassDeviceOnlyINTEL, 5936},
    {:StorageClassHostOnlyINTEL, 5937}
  ]
  end

  def id(a) do
    element = Enum.find(storage(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
