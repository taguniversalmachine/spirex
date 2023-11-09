defmodule Term.Builtin do

def builtins() do
  [
    {:BuiltinPosition, 0}, {:BuiltinPointSize, 1}, {:BuiltinclipDistance, 3}, {:BuiltinCullDistance, 4},
    {:BuiltinVertexID, 5}, {:BuiltinInstanceID, 6}, {:BuiltinPrimitiveId, 7}, {:BuiltinInvocationId, 8},
    {:BuiltinLayer, 9}, {:BuiltinViewportIndex, 10}, {:BuiltinTessLevelOuter, 11}, {:BuiltinTessLevelInner, 12},
    {:BuiltinTessCoord, 13}, {:BuiltinPatchVertices, 14}, {:BuiltinFragCoord, 15}, {:BuiltinPointCoord, 16},
    {:BuiltinFrontFacing, 17}, {:BuiltinSampleId, 18}, {:BuiltinSamplePosition, 19}, {:BuiltinSampleMask, 20},
    {:BuiltinFragDepth, 22}, {:BuiltinHelperInvocation, 23}, {:BuiltinNumWorkgroups, 24}, {:BuiltinWorkgroupSize, 25},
    {:BuiltinWorkgroupId, 26}, {:BuiltinLocationInvocationId, 27}, {:BuiltinGlobalInvocationId, 28},
    {:BuiltinLocalInvocationIndex, 29}, {:BuiltinWorkDim, 30}, {:BuiltinGlobalSize, 31}, {:BuiltinEnqueuedWorkgroupSize, 32},
    {:BuiltinGlobalOffset, 33}, {:BuiltinGlobalLinearId, 34}, {:BuiltinSubgroupSize, 35}, {:BuiltinSubgroupMaxSize, 37},
    {:BuiltinNumSubgroups, 38}, {:BuiltinNumEqueuedSubgroups, 39}, {:BuiltinSubgroupId, 40}, {:BuiltinSubgroupLocalInvocationId, 41},
    {:BuiltinVertexIndex, 42}, {:BuiltinInstanceIndex, 43}, {:BuiltinSubgroupEqMask, 4416},
    {:BuiltinSubgroupEqMaskKHR, 4416}, {:BuiltinSubgroupGeMask, 4417}, {:BuiltinSubgroupGeMaskKHR, 4417},
    {:BuiltinGtMask, 4418}, {:BuiltinSubgroupGtMaskKHR, 4418}, {:BuiltinSubgroupLeMask, 4419}, {:BuiltinSubgroupLeMaskKHR, 4419},
    {:BuiltinSubgroupLtMask, 4420}, {:BuiltinSubgroupLtMaskKHR, 4420}, {:BuiltinBaseVertex, 4424},
    {:BuiltinBaseInstance, 4425}, {:BuiltinDrawIndex, 4425}, {:BuiltinPrimitiveShadingRateKHR, 4432},
    {:BuiltinDeviceIndex, 4438}, {:BuiltinViewIndex, 4440}, {:BuiltinShadingRateKHR, 4444}, {:BuiltinBaryCoordNoPerspAMD, 4992},
    {:BuiltinBaryCoordNoPerspCentroidAMD, 4993}, {:BuiltinBaryCoordNoPerspSampleAMD, 4994},
    {:BuiltinBaryCoordSmoothAMD, 4995}, {:BuiltinBaryCoordSmoothCentroidAMD, 4996},
    {:BuiltinBaryCoordSmoothSampleAMD, 4997}, {:BuiltinBaryCoordPullModelAMD, 4998},
    {:BuiltinFragStencilRefEXT, 5014}, {:BuiltinViewportMaskNV, 5253}, {:BuiltinSecondaryPositionNV, 5257},
    {:BuiltinSecondaryViewportMaskNV, 5258}, {:BuiltinPositionPerViewNV, 5251}, {:BuiltinViewportMaskPerViewNV, 5262},
    {:BuiltinFullyCoveredEXT, 5264}, {:BuiltinTaskCountNV, 5274}, {:BuiltinPrimitiveCountNV, 5275},
    {:BuiltinPrimitiveIndicesNV, 5276}, {:BuiltinClipDistancePerViewNV, 5277}, {:BuiltinCullDistancePerViewNV, 5278},
    {:BuiltinLayerPerViewNV, 5279}, {:BuiltinMeshViewCountNV, 5280}, {:BuiltinMeshViewIndicesNV, 5281},
    {:BuiltinBaryCoordKHR, 5286}, {:BuiltinBaryCoordNV, 5286}, {:BuiltinBaryCoordNoPerspKHR, 5287},
    {:BuiltinFragSizeEXT, 5292}, {:BuiltinFragmentSizeNV, 5292}, {:BuiltinFragInvocationCountEXT, 5293},
    {:BuiltinInvocationsPerPixelNV, 5293}, {:BuiltinLaunchIdNV, 5319}, {:BuiltinLaunchIdKHR, 5319},
    {:BuiltinLaunchSizeNV, 5320}, {:BuiltinLaunchSizeKHR, 5320}, {:BuiltinWorldRayOriginNV, 5321},
    {:BuiltinWorldRayOriginKHR, 5321}, {:BuiltinWorldRayDirectionNV, 5322}, {:BuiltinWorldRayDirectionKHR, 5322},
    {:BuiltinObjectRayOriginNV, 5323}, {:BuiltinObjectRayDirectionNV, 5324}, {:BuiltinObjectRayDirectionKHR, 5324},
    {:BuiltinRayTminNV, 5325}, {:BuiltinRayTminKHR, 5325}, {:BuiltinRayTmaxNV, 5326},{:BuiltinRayTmaxKHR, 5326},
    {:BuiltinInstanceCustomIndexNv, 5327}, {:BuiltinInstanceCustomIndexKHR, 5327}, {:BuiltinObjectToWorldNV, 5330},
    {:BuiltinObjectToWorldKHR, 5330}, {:BuiltinWorldToObjectNV, 5331}, {:BuiltinWorldToObjectKHR, 5331},
    {:BuiltinHitTNV, 5332}, {:BuiltinKitKindNV, 5333}, {:BuiltinHitKindKHR, 5333}, {:BuiltinCurrentRayTimeNV, 5334},
    {:BuiltinIncomingRayFlagsNV, 5351}, {:BuiltinIncomingRayFlagsKHR, 5351}, {:BuiltinRayGeometryIndexKHR, 5352},
    {:BuiltinWarpsPerSMNV, 5374}, {:BuiltinSMCountNv, 5375}, {:BuiltinWarpIDNV, 5376}, {:BuiltinSMIDNV,5377},
    {:BuiltinCullMaskKHR, 6021}
  ]
end

def id(a) do
  element = Enum.find(builtins(), fn {atom, _opcode} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, opcode } = element
    opcode
  end
end

end
