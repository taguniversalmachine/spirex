defmodule Term.Capability do
  def capabilities() do
    [
      {:CapabilityMatrix, 0}, {:CapabilityShader, 1}, {:CapabilityGeometry, 2}, {:CapabilityTesselation, 3},
      {:CapabilityAddresses, 4}, {:CapabilityLinkage, 5}, {:CapabilityKernel, 6}, {:CapabilityVector16, 7},
      {:CapabilityFloat16Buffer, 8}, {:CapabilityFloat16, 9}, {:CapabilityFloat64, 10},
      {:CapabilityInt64, 11}, {:CapabilityInt64Atomics, 12}, {:CapabilityImageBasic, 13},
      {:CapabilityImageReadWrite, 14}, {:CapabilityImageMipmap, 15}, {:CapabilityPipes, 17}, {:CapabilityGroups, 18},
      {:CapabilityDeviceEnqueue, 19}, {:CapabilityLiteralSampler, 20}, {:CapabilityAtomicStorage, 21},
      {:CapabilityInt16, 22}, {:CapabilityTesselationPointSize, 23}, {:CapabilityGeometryPointSize, 24},
      {:CapabilityImageGatherExtended, 25}, {:CapabilityStorageImageMultisample, 27},
      {:CapabilityUniformBufferArrayDynamicIndexing, 28}, {:CapabilitySampledImagearrayDynamicIndexing, 29},
      {:CapabilityStorageBufferArrayDynamicIndexing, 30}, {:CapabilitySTorageImageArrayDynamicIndexing, 31},
      {:CapabilityClipDistance, 32}, {:CapabilityCullDistance,33}, {:CapabilityImageCubeArray, 34},
      {:CapabilitySamplerateShading, 35}, {:CapabilityImageRect, 36}, {:CapabilitySampledRect, 37},
      {:CapabilityGenericPionter, 38}, {:CapabilityInt8, 39}, {:CapabilityInputAttachment,40},
      {:CapabilitySparseResidency, 41}, {:CapabilityMinLod, 42}, {:CapabilitySampled1D, 43}, {:CapabilityImage1D, 44},
      {:CapabilityImage1D, 44}, {:CapabilitySampledCubeArray, 45}, {:CapabilitySampledBuffer, 46},
      {:CapabilityImageBuffer, 47}, {:CapabilityImageMSArray, 48}, {:CapabilityStorageImageExtendedFormats, 49},
      {:CapabilityImageQuery, 50}, {:CapabilityDerivativeControl, 51}, {:CapabilityInterpolationFunction, 52},
      {:CapabilityTransformFeedback, 53}, {:CapabilityGeometryStreams, 54}, {:CapabilityStorageImageReadWithoutFormat, 55},
      {:CapabilityStorageImageWriteWithoutFormat, 56}, {:CapabilityMultiViewport, 57}, {:CapabilitySubgroupDispatch, 58},
      {:CapabilityNamedBarrier, 59}, {:CapabilityPipeStorage, 60}, {:CapabilityGroupNonUniform, 61}, {:CapabilityGroupNonUniformVote, 62},
      {:CapabilityGroupNonUniformArithmetic, 63}, {:CapabilityGroupNonUniformBallot, 64}, {:CapabilityGroupNonUniformShuffle, 65},
      {:CapabilityGroupNonUniformShuffleRelative, 66}, {:CapabilityGroupNonUniformClustered, 67}, {:CapabilityGroupNonUniformQuad, 68},
      {:CapabilityShaderlayer, 69}, {:CapabilityShaderViewportIndex, 70}, {:CapabilityUniformDecoration, 71},
      {:CapabilityFragmentShadingRateKHR, 4422}, {:CapabilitySubgroupBallotKHR, 4423}, {:CapabilityDrawParameters, 4427},
      {:CapabilityWorkgroupMemoryExplicitlayoutKHR, 4428}, {:CapabilityWorkgroupMemoryExplicitlayout8BitAccessKHR, 4429},
      {:CapabilityWorkgroupMemoryExplicitLayout18BitAccessKHR, 4430}, {:CapabilitySubgroupVoteKHR, 4431},
      {:CapabilityStorageBuffer16BitAccess, 4433}, {:CapabilityStorageUniformBufferBlock16, 4433},
      {:CapabilityUniformAndStorageBuffer16BitAccess, 4434}, {:CapabilityStorageUniform16, 4434}, {:CapabilityStoragePushConstant16, 4435},
      {:CapabilityStorageStorageInputOutput16, 4436}, {:CapabilityDeviceGroup, 4437}, {:CapabilityMultiView, 4439},
      {:CapabilityVariablePointersStorageBuffer, 4441}, {:CapabilityVariablePointers, 4442}, {:CapabilityAtomicStorageOps, 4445},
      {:CapabilitySampleMaskPostDepthCoverage, 4447}, {:CapabilityStorageBuffer8BitAccess, 4448},
      {:CapabilityUnikformAndStorageBuffer8BitAccess, 4449}, {:CapabilityStoragePushConstant8, 4450}, {:CapabilityDenormPreserve, 4464},
      {:CapabilityDenormFlushToZero, 4465}, {:CapabilitySignedZeroInfNanPreserve, 4466}, {:CapabilityRoundingModeRTE, 4467},
      {:CapabilityRoundingModeRTZ, 4468}, {:CapabilityRayQueryProvisionalKHR, 4471}, {:CapabilityRayQueryKHR, 4472},
      {:CapabilityRayTraversalPrimitiveCullingKHR, 4473}, {:CapabilityRayTracingKHR, 4479}, {:CapabilityFloat16ImageAMD, 5008},
      {:CapabilityImageGatherBiasLodAMD, 5009}, {:CapabilityFragmentMaskAMD, 5010},{:CapabilityStencilExportEXT, 5013},
      {:CapabilityImageReadWriteLodAMD, 5015}, {:CapabilityInt64ImageEXT, 5016}, {:CapabilityShaderClockKHR, 5055},
      {:CapabilitySampleMaskOverrideCoverageNV, 5249}, {:CapabilityGeometryShaderPassthroughNV, 5251},
      {:CapabilityShaderViewportIndexLayerEXT, 5254}, {:CapabilityShaderViewportMaskNV, 5255}, {:CapabilityShaderStereaoViewNV, 5259},
      {:CapabilityPerViewAttributesNV, 5260}, {:CapabilityFragmentfullyCoveredEXT, 5265}, {:CapabilityMeshShadingNV, 5266},
      {:CapabilityImageFootprintNV, 5282}, {:CapabilityFragmentBarycentricKHR, 5284},{:CapabilityComputeDerivativeGroupQuadsNV, 5288},
      {:CapabilityFragmentDensityEXT, 5291}, {:CapabilityShadingRateNV, 5291}, {:CapabilityGroupNonUniformPartitionedNV, 5297},
      {:CapabilityShaderNonUniform, 5301}, {:CapabilityShaderNonUniformEXT, 5301}, {:CapabilityRuntimeDescriptorArray, 5302},
      {:CapabilityRuntimeDescriptorArrayEXT, 5302}, {:CapabilityInputAttachmentArrayDynamicIndexing, 5303},
      {:CapabilityInputAttachmentArrayDynamicIndexingEXT, 5303}, {:CapabilityUniformTexelBufferArrayDynamicIndexing, 5304},
      {:CapabilityStorageTexelBufferArrayDynamicIndexing, 5305}, {:CapabilityStorageTexelBufferArrayDynamicIndexingEXT, 5305},
      {:CapabilityUniformBufferArrayNonUniformIndexing, 5306}, {:CapabilitySampledImageArrayNonUnifromIndexing, 5307},
      {:CapabilitySampledImageArrayNonUnifromIndexingEXT, 5307}, {:CapabilityStorageBufferArrayNonUniformIndexing, 5308},
      {:CapabilityStorageBufferArrayNonUniformIndexingEXT, 5308}, {:CapabilityStorageImageArrayNonUniformIndexing, 5309},
      {:CapabilityStorageImageArrayNonUniformIndexingEXT, 5309}, {:CapabilityInputAttachmentArrayNonUniformIndexing, 5310},
      {:CapabilityInputAttachmentArrayNonUniformIndexingEXT, 5310}, {:CapabilityUniformTexelBufferArrayNonUniformIndexing, 5311},
      {:CapabilityUniformTexelBufferArraynonUniformIndexingEXT, 5311}, {:CapabilityStorageTexelBufferArrayNonUniformIndexing, 5312},
      {:CapabilityRayTracingNV, 5340}, {:CapabilityRayTracingMotionBlurNV, 5341}, {:CapabilityVulkanMemoryModel, 5345},
      {:CapabilityVulkanMemoryModelKHR, 5345}, {:CapabilityVulkanMemoryModelDeviceScope, 5346},
      {:CapabilityVulkanMemoryModelDeviceScopeKHR, 5346},{:CapabilityPhysicalStorageBufferAddresses, 5347},
      {:CapabilityPhysicalStorageBufferAddressesEXT, 5347}, {:CapabilityComputeDerivativeGrouplinearNV, 5350},
      {:CapabilityRayTracingProvisionalKHR, 5353}, {:CapabilityCooperativeMatrixNV, 5357}, {:CapabilityFragmentShaderSampleInterlockEXT, 5363},
      {:CapabilityFragmentShaderShadingRateInterlockEXT, 5372}, {:CapabilityShaderSMBuiltinsNV, 5373},
      {:CapabilityFragmentShaderPixelInterlockEXT, 5378}, {:CapabilityDemoteToHelperInvocation, 5379},
      {:CapabilityDemoteTohelperInvocationEXT, 5379}, {:CapabilityBindlessTextureNV, 5390}, {:CapabilitySubgroupShuffleINTEL, 5568},
      {:CapabilitySubgroupBufferBlockIOINTEL, 5569}, {:CapabilitySubgrupImageBlockIOINTEL, 5570}, {:CapabilitySubgroupImageMediaBlockIOINTEL, 5579},
      {:CapabilityRoundToInfinityINTEL, 5582}, {:CapabilityFloatingointModelINTEL, 5583}, {:CapabilityIntegerFunctions2INTEL, 5584},
      {:CapabilityFunctionPointersINTEL, 5603}, {:CapabilityIndirectReferencesINTEL, 5604}, {:CapabilityAsmINTEL, 5606},
      {:CapabilityAtomicFloat32MinMaxEXT, 5612}, {:CapabilityAtomicFloat64MinMaxEXT, 5613}, {:CapabilityAtomicFloat16MinMaxEXT, 5616},
      {:CapabilityVectorComputeINTEL, 5617}, {:CapabilityVectorAnyINTEL, 5619}, {:CapabilityExpectAssumeKHR, 5629},
      {:CapabilitySubgroupAvcMotionEstimationINTEL, 5696}, {:CapabilitySubgroupAvcmotionEstimationIntraINTEL, 5697},
      {:CapabilitySubgroupAvcMotionEstimationChromaINTEL, 5698}, {:CapabilityVariableLengthArrayINTEL, 5817}, {:CapabilityFunctionFloatControlINTEL, 5821},
      {:CapabilityFPGAMemoryAttributesINTEL, 5824}, {:CapabilityFPFastMathModelINTEL, 5837}, {:CapabilityArbitraryPrecisionIntegersINTEL, 5844},
      {:CapabilityArbitraryPrecisionFloatingPointINTEL, 5845}, {:CapabilityUnstructuredLoopControlsINTEL, 5886},
      {:CapabilityFPGALoopControlsINTEL, 5888}, {:CapabilityKernelAttributesINTEL, 5892}, {:CapabilityFPGAKernelAttributesINTEL, 5897},
      {:CapabilityFPGAMemoryAccessesINTEL, 5898}, {:CapabilityFPGAClusterAttributesINTEL, 5904}, {:CapabilityLoopFuseINTEL, 5906},
      {:CapabilityMemoryAccessAliasingINTEL, 5910}, {:CapabilityFPGABufferLocationINTEL, 5920}, {:CapabilityArbitraryPrecisionFixedPointINTEL, 5922},
      {:CapabilityUSMStorageClassesINTEL, 5935}, {:CapabilityIOPipesINTEL, 5943}, {:CapabilityBlockingPipesINTEL, 5945},
      {:CapabilityFPGARegINTEL, 5948}, {:CapabilityDotProductAll, 6016}, {:CapabilityDotProductInputAllKHR, 6016},
      {:CapabilityDotProductInput4x8BitKHR, 6017}, {:CapabilityDotProductInput4x8BitPacked, 6018},
      {:CapabilityDotProductInput4x8BitPackedKHR, 6018}, {:CapabilityDotProduct, 6019}, {:CapabilityDotProductKHR, 6019},
      {:CapabilityRayCullMaskKHR, 6020}, {:CapabilityBitInstructions, 6025}, {:CapabilityGroupNonniformRotateKHR, 6026},
      {:CapabilityAtomicFloat32AddEXT, 6033}, {:CapabilityAtomicFloat64AddEXT, 6034}, {:CapabilityLongConstantCompositeINTEL, 6089},
      {:CapabilityOptNoneINTEL, 6094}, {:CapabilityAtomicFloat16AddEXT, 6095}, {:CapabilityDebugInfoModuleINTEL, 6114},
      {:CapabilitySplitBarrierINTEL, 6141}, {:CapabilityGroupUniformArithmeticKHR, 6400}
    ]
  end

  def id(a) do
    element = Enum.find(capabilities(), fn {atom, _opcode} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, opcode} = element
      opcode
    end
  end

  def names do
    atom_strings = Enum.map(capabilities(), fn {cap, _} -> to_string(cap) end)
    Enum.map(atom_strings, fn str -> String.slice(str, 10, 100) end)
  end

end
