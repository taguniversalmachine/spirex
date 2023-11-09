defmodule Term.Types do

def types() do
  [:boolean, :integer, :float, :numeric, :scalar, :vector, :matrix, :array, :structure, :aggregate,
   :composite, :image, :sampler, :sampled_image, :physical_pointer, :logical_pointer, :concrete, :abstract,
   :opaque, :variable_pointer, :OpTypeImage, :OpTypeSampler, :OpTypeSampledImage, :OpTypeOpaque, :OpTypeEvent, :OpTypeDeviceEvent,
   :OpTypeReserveId, :OpTypeQueue, :OpTypePipe, :OpTypeForwardPointer, :OpTypePipeStorage, :OpTypeNamedBarrier]
end

def opaque_types() do
  [:OpTypeImage, :OpTypeSampler, :OpTypeSampledImage, :OpTypeOpaque, :OpTypeEvent, :OpTypeDeviceEvent,
   :OpTypeReserveId, :OpTypeQueue, :OpTypePipe, :OpTypeForwardPointer, :OpTypePipeStorage, :OpTypeNamedBarrier
  ]
end

def variable_pointer() do
  [:OpSelect, OpPhi, OpFunctionCall, OpPtrAccessChain, OpLoad, OpConstantNull ]
end




end
