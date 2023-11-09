defmodule Term.Decoration do
  def decorations() do
    [
      {:DecorationRelaxedPrecision, 0}, {:DecorationSpecId, 1}, {:DecorationBlock, 2}, {:DecorationBufferBlock, 3},
      {:DecorationRowMajor, 4}, {:DecorationColMajor, 5}, {:DecorationArrayStride, 6}, {:DecorationMatrixStride, 7},
      {:DecorationGLSLShared, 8}, {:DecorationGLSLPacked, 9}, {:DecorationCPacked, 10}, {:DecorationBuiltInt, 11},
      {:DecorationNoPerspective, 13}, {:DecorationFlat, 14}, {:DecorationPatch, 15}, {:DecorationCentroid, 16},
      {:DecorationSample, 17}, {:DecorationInvariant, 18}, {:DecorationRestrict, 19}, {:DecorationAliased, 20},
      {:DecorationVolatile, 21},{:DecorationConstant, 22}, {:DecorationCoherent, 23}, {:DecorationNonWritable, 24},
      {:DecorationNonReadable, 25}, {:DecorationUniform, 26}, {:DecorationUniformId, 27}, {:DecorationSaturatedConversion, 28},
      {:DecorationStream, 29}, {:DecorationLocation, 30}, {:DecorationComponent, 31}, {:DecorationIndex, 32},
      {:DecorationBinding, 33}, {:DecorationDescriptorSet, 34}, {:DecorationOffset, 35},
      {:DecorationXfbBuffer, 36}, {:DecorationXfbStride, 37}, {:DecorationFunctionParamAttr, 38},
      {:DecorationFPRoundingMode, 39}, {:DecorationFPFastMathMode, 40}, {:DecorationLinkageAttributes, 41},
      {:DecorationNoContraction, 42}, {:DecorationInputAttachmentIndex, 43}, {:DecorationAlignment, 44},
      {:DecorationMaxByteOffset, 45}, {:DecorationAlignmentId, 46}, {:DecorationMaxByteoffsetId, 47},
      {:DecorationNoSignedWrap, 4469}, {:DecorationNoUnsignedWrap, 4470}, {:DecorationExplicitInterpAMD, 4999},
      {:DecorationOverrideCoverageNV, 5248}, {:DecorationPassthroughNV, 5250}, {:DecorationViewportRelativeNV, 5252},
      {:DecorationViewportRelativeNV, 5252}, {:DecorationSecondaryViewportRelativeNV, 5256},
      {:DecorationPerPrimitiveNV, 5271}, {:DecorationPerViewNV, 5272}, {:DecorationPerTaskNV, 5273},
      {:DecorationPerVertexNV, 5285}, {:DecorationNonUniformEXT, 5300}, {:DecorationRestrictPointer, 5355},
      {:DecorationRestrictPointerEXT, 5355}, {:DecorationAliasedPointer, 5356}, {:DecorationAliasedPointerEXT, 5356},
      {:DecorationBindlessSamplerNV, 5398},{:DecorationBindlessImageNV, 5399}, {:DecorationBoundSamplerNV, 5400},
      {:DecorationBoundImageNV, 5401}, {:DecorationSITCallINTEL, 5599}, {:DecorationReferencedIndirectlyINTEL, 5602},
      {:DecorationClobberINTEL, 5607}, {:DecorationSideEffectsINTEL, 5608}, {:DecorationVectorComputeVariableINTEL, 5624},
      {:DecorationFuncParamIOKindINTEL, 5625}, {:DecorationVectorComputeFunctionINTEL, 5626},
      {:DecorationStackCallINTEL, 5627}, {:DecorationGlobalVariableOffsetINTEL, 5628}, {:DecorationCounterBuffer, 5634},
      {:DecorationHlslCounterBufferGOOGLE, 5634}, {:DecorationUserSemantic, 5635}, {:DecorationHlslSemanticGOOGLE, 5635},
      {:DecorationUserTypeGOOGLE, 5636}, {:DecorationFunctionRoundingModeINTEL, 5822}, {:DecorationFunctionDenormModeINTEL, 5823},
      {:DecorationRegisterINTEL, 5825}, {:DecorationMemoryINTEL, 5826}, {:DecorationNumbanksINTEL, 5827},
      {:DecorationBankwidthINTEL, 5828}, {:DecorationMaxPrivateCopiesINTEL, 5829}, {:DecorationSinglePumpINTEL, 5830},
      {:DecorationDoublepumpINTEL, 5831}, {:DecorationMaxReplicatesINTEL, 5832}, {:DecorationSimpleDualPortINTEL, 5833},
      {:DecorationMergeINTEL, 5834}, {:DecorationBanakBitsINTEL, 5835}, {:DecorationForcePow2DepthINTEL, 5836},
      {:DecorationBurstCoalesceINTEL, 5899}, {:DecorationCacheSizeINTEL, 5900}, {:DecorationDontStaticallyCoalesceINTEL, 5901},
      {:DecorationPrefetchINTEL, 5902}, {:DecorationStallEnableINTEL, 5905}, {:DecorationFuseLoopsInFunctionINTEL, 5907},
      {:DecorationAliasScopeINTEL, 5914}, {:DecorationAliasScopeINTEL, 5914}, {:DecorationNoAliasINTEL, 5915},
      {:DecorationBufferLocationINTEL, 5921}, {:DecorationIOPipeStorageINTEL, 5944}, {:DecorationFunctionFloatingPointModelINTEL, 6080},
      {:DecorationSingleElementVectorINTEL, 6085}, {:DecorationVectorComputeCallableFunctionINTEL, 6087},
      {:DecorationMediaBlockIOINTEL, 6140}
    ]
  end

  def id(a) do
    element = Enum.find(decorations(), fn {identifier, _opcode} -> a == identifier end)
    if element == nil do
      nil
    else
      {_identifier, opcode} = element
      opcode
    end
 end

end
