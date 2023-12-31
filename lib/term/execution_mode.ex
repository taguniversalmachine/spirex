defmodule Term.ExecutionMode do

def modes() do
  [
    {:ExecutionModeInvocations, 0}, {:ExecutionModeSpacingEqual, 1}, {:ExecutionModeSpacingFractionalEven, 2},
    {:ExecutionModeSpacingFractionalOdd, 3},
    {:ExecutionModeVertexOrderCw, 4}, {:ExecutionModeVertexOrderCcw, 5}, {:ExecutionModePixelCenterInteger, 6},
    {:ExecutionModeOriginUpperLeft, 7},
    {:ExecutionModeOriginLowerLeft, 8}, {:ExecutionModeEarlyFragmentTests, 9}, {:ExecutionModePointMode, 10},
    {:ExecutionModeXfb, 11}, {:ExecutionModeDepthReplacing,12}, {:ExecutionModeDepthGreater, 14},
    {:ExecutionModeDepthLess, 15}, {:ExecutionModeDepthUnchanged,16}, {:ExecutionModeLocalSize, 17},
    {:ExecutionModeLocalSizeHint, 18}, {:ExecutionModeInputPoints, 19}, {:ExecutionModeInputLines, 20},
    {:ExecutionModeInputLinesAdjacency, 21}, {:ExecutionModeTriangles, 22}, {:ExecutionModeInputTrianglesAdjacency, 23},
    {:ExecutionModeQuads, 24}, {:ExecutionModeIsolines, 25}, {:ExecutionModeOutputVertices, 26},
    {:ExecutionModeOutputPoints, 27}, {:ExecutionModeOutputLineStrip,28}, {:ExecutionModeOutputTriangleStrip, 29},
    {:ExecutionModeVecTypeHint, 30}, {:ExecutionModeContractionOff, 31}, {:ExecutionModeInitializer, 33},
    {:ExecutionModeFinalizer, 34}, {:ExecutionModeSubgroupSize, 35}, {:ExecutionModeSubgroupsPerWorkgroup, 36},
    {:ExecutionModeSubgroupsPerWorkgroupId, 37}, {:ExecutionModeLocalSizeId, 38}, {:ExecutionModeLocalSizeHintId, 39},
    {:ExecutionModeSubgroupUniformControlFlowKHR, 4421}, {:ExecutionModePostDepthCoverage, 4446},
    {:ExecutionModeDenormPreserve, 4459}, {:ExecutionModeDenormFlushToZero, 4460}, {:ExecutionModeSignedZeroinfNanPreserve, 4461},
    {:ExecutionModeRoundingModeRTE, 4462}, {:ExecutionModeRoundingModeRTZ, 4463}, {:ExecutionModeEarlyAndLateFragmentTestsAMD, 5017},
    {:ExecutionModeStencilRefReplacingEXT, 5027},{:ExecutionModeStencilRefUnchabnedFrontAMD, 5079},
    {:ExecutionModeStencilRefGreaterFrontAMD, 5080}, {:ExecutionModeStencilRefLessFrontAMD, 5081},
    {:ExecutionModeStencilRefUnchangedBackAMD, 5082}, {:ExecutionModeStencilRefGreaterBackAMD, 5083},
    {:ExecutionModeStencilRefLessBackAMD, 5084}, {:ExecutionModeOutputLinesNV, 5269},
    {:ExecutionModeOutputPrimitivesNV, 5270}, {:ExecutionModeDerivativeGroupQuadsNV, 5289},
    {:ExecutionModeDerivativeGroupLinearNV, 5290}, {:ExecutionModeOutputTrianglesNV, 5298},
    {:ExecutionModePixelInterlockOrderedEXT, 5366}, {:ExecutionModePixelInterlockUnorderedEXT, 5387},
    {:ExecutionModeSampleInterlockOrderedEXT, 5368}, {:ExecutionModeSampleInterlockUnorderedEXT, 5369},
    {:ExecutionModeShadingRateInterlockOrderedEXT, 5370}, {:ExecutionModeShadingRateInterlockUnorderedEXT,5371},
    {:ExecutionModeSharedLocalMemorySizeINTEL, 5618}, {:ExecutionModeRoundingModeRTPINTEL, 5620},
    {:ExecutionModeFloatingPointModeALTINTEL, 5622}, {:ExecutionModeFloatingPointModeIEEEINTEL, 5623},
    {:ExecutionModeMaxWorkgroupSizeINTEL, 5893}, {:ExecutionModeMaxWorkDimINTEL, 5894},
    {:ExecutionModeNoGlobalOffsetINTEL, 5895}, {:ExecutionModeNoGlobalOffsetINTEL, 5695},
    {:ExecutionModeNumSIMDWorkItemsINTEL, 5696}, {:ExecutionModeSchedulerTargetFmaxMhzINTEL, 5903},
    {:ExecutionModeNamedBarrierCountINTEL, 6417}
  ]
end

def id(a) do
  element = Enum.find(modes(), fn {atom, _opcode} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, opcode} = element
    opcode
  end
end

end
