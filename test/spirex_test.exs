defmodule SpirexTest do
  require Spec
  use ExUnit.Case
  doctest Spirex

  test "has magic number, version, generator" do
    bin = Spec.new_binary()
    <<magic::32,_rest::64>> = bin
    assert magic == 0x07230203  # Magic
    <<_magic::32, version::32, _rest::32>> = bin
    assert version == 0x00010000  # Version
    <<_magic::32, _version::32, generator::32>> = bin
    assert generator == 0x00180001# Generator
  end

  test "identifiers" do
    assert Term.Dim.id(:Dim2D) == 1
    assert Term.AddressingModel.id(:PhysicalStorageBuffer64) == 5348
    assert Term.ExecutionMode.id(:ExecutionModeStencilRefLessFrontAMD) == 5081
    assert Term.ExecutionModel.id(:CallableKHR) == 5318
    assert Term.MemoryModel.id(:VulkanKHR) == 3
    assert Term.SourceLanguage.id(:langSYCL) == 7
    assert Term.StorageClass.id(:StorageClassHostOnlyINTEL) == 5937
    assert Term.SamplerFilterMode.id(:SamplerFilterModeLinear) == 1
    assert Term.SamplerImageFormat.id(:SamplerImageFormatR64i) == 41
    assert Term.ImageChannelOrder.id(:ImageChannelOrderABGR) == 19
    assert Term.ImageChannelDataType.id(:ImageChannelDataTypeUnormint101010) == 16
    assert Term.ImageOperand.id(:ImageOperandOffsets) == 0x10000
    assert Term.FPFastMathMode.id(:FPFastMathModeAllowReassocINTEL) == 0x200000
    assert Term.FPRoundingMode.id(:FPRoundingModeRTN) == 3
    assert Term.LinkageType.id(:LinkageTypeLinkOnceODR) == 2
    assert Term.AccessQualifier.id(:AccessQualifierReadWrite) == 2
    assert Term.FunctionParameterAttribute.id(:FunctionParameterAttributeNoReadWrite) == 7
    assert Term.Decoration.id(:DecorationMediaBlockIOINTEL) == 6140
    assert Term.Builtin.id(:BuiltinCullMaskKHR) == 6021
    assert Term.SelectionControl.id(:SelectionControlDontFlatten) == 0x2
    assert Term.LoopControl.id(:LoopControlNoFusionIntel) == 0x800000
    assert Term.FunctionControl.id(:FunctionControlOptionNoneINTEL) == 0x10000
    assert Term.MemorySemantics.id(:MemorySemanticsVolatile) == 0x8000
    assert Term.MemoryOperands.id(:MemoryOperandsNoaliasINTELMask) == 0x2000
    assert Term.Scope.id(:ScopeShaderCallKHR) == 6
    assert Term.GroupOperation.id(:GroupOperationPartitionedExclusiveScanNV) == 8
    assert Term.KernelEnqueue.id(:KernelEnqueueWaitWorkGroup) == 2
    assert Term.KernelProfilingInfo.id(:KernelProfilingInfoCmdExecTime) == 0x1
    assert Term.Capability.id(:CapabilityGroupUniformArithmeticKHR) == 6400
    assert Term.ReservedRayQueryIntersection.id(:RayQueryCommittedIntersectionKHR) == 1
    assert Term.ReservedRayQueryCommittedType.id(:RayQueryCommmittedIntersectionGeneratedKHR) == 2
    assert Term.ReservedFragmentShadingRate.id(:ReservedFragmentShadingRateHorizontal4Pixels) == 0x6
    assert Term.ReservedFPDenormMode.id(:ReservedFPDenormModeFlushToZero) == 1
    assert Term.ReservedFPOperationMode.id(:ReservedFPOperationModeALT) == 1
    assert Term.QuantizationMode.id(:QuantizationModeRND_CONV_ODD) == 7
    assert Term.OverflowMode.id(:OverflowModeSAT_SYM) == 3
    assert Term.PackedVectorFormat.id(:PackedVectorFormat4x8BitKHR) == 1
    assert Term.Instruction.Misc.id(:OpExpectKHR) == 5631
    assert Term.Instruction.Debug.id(:OpModuleProcessed) == 330
    assert Term.Instruction.Annotation.id(:OpMemberDecorateString) == 5633
    assert Term.Instruction.Extension.id(:OpExtInst) == 12
    assert Term.Instruction.ModeSet.id(:OpExecutionModeId) == 331
    assert Term.Instruction.TypeDeclaration.id(:OpTypeStructContinuedINTEL) == 6090
    assert Term.Instruction.ConstantCreation.id(:OpSpecConstantCompositeContinuedINTEL) == 6092
    assert Term.Instruction.Memory.id(:OpPtrDiff) == 403
    assert Term.Instruction.Function.id(:OpFunctionFall) == 57
    assert Term.Instruction.Image.id(:OpimageSampleFootprintNV) ==5283
    assert Term.Instruction.Conversion.id(:OpBitcast) == 124
    assert Term.Instruction.Composite.id(:OpCopyLogical) == 400
    assert Term.Instruction.Arithmetic.id(:OpSUDotAccSatK) == 4455
    assert Term.Instruction.Bit.id(:OpBitCount) == 205
    assert Term.Instruction.Logical.id(:OpFUnordGreaterThanEqual) ==  191
    assert Term.Instruction.Derivative.id(:OpFwidthCoarse) == 215
    assert Term.Instruction.Atomic.id(:OpAtomicFAddEXT) == 6035
    assert Term.Instruction.Primitive.id(:OpEndStreamPrimitive) == 221
    assert Term.Instruction.Barrier.id(:OpControlBarrierWaitINTEL) == 6143
    assert Term.Instruction.Group.id(:OpGroupLogicalXorKHR) ==6408
    assert Term.Instruction.Enqueue.id( :OpGetKernelMaxNumSubgroups) ==326
    assert Term.Instruction.Pipe.id(:OpWritePipeBlockingINTEL) == 5947
    assert Term.Instruction.NonUniform.id(:OpGroupNonUniformPartitionNV) == 5296
    assert Term.Instruction.Reserved.id(:OpTraceMotionNV) == 533
  end

end
