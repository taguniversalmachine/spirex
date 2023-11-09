defmodule Term.Instruction.Image do

  def instructions() do
    [
      {:OpSampledImage, 5, 86}, {:OpImageSampleImplicitLod, 5, 87}, {:OpImageSampleExplicitLod, 7, 88},
      {:OpImageSmapleDrefImplicitLod, 6, 89}, {:OpImageSampleDrefExplicitLod, 8, 90},
      {:OpImageSampleProjImplicitLod, 5, 91}, {:OpImageSampleProjExplicitLod, 7, 92},
      {:OpimageSampleProjDrefImplicitLod, 6, 93}, {:OpImageSampleProjDrefExplicitLod, 8, 94},
      {:OpImageFetch, 5, 95}, {:OpImageGather, 6, 96}, {:OpImageDrefGather, 6, 97},
      {:OpImageRead, 5, 98}, {:OpImageWrite, 4, 99}, {:OpImage, 4, 100},
      {:OpImageQueryFormat, 4, 101}, {:OpImageQueryOrder, 4, 102}, {:OpImageQuerySizeLod, 5, 103},
      {:OpImageQuerySize, 4, 104}, {:OpImageQueryLod, 5, 105}, {:OpImageQueryLevels, 4, 106},
      {:OpImageQuerySamples, 4, 107}, {:OpimageSparseSampleImplicitLod, 5, 305},
      {:OpImageSpareSampleExplicitLod, 7, 306}, {:OpImageSparseSampleDrefImplicitLod, 6, 307},
      {:OpImageSparseSampleDrefExplicitLod, 8, 308}, {:OpImageSparseSampleProjImplicitLod, 5, 309},
      {:OpImageSparseSampleProjExplicitLod, 7, 310}, {:OpImageSparseSampleProjDrefImplicitLod, 6, 311},
      {:OpImageSparseSampleProjDrefExplicitLod, 8, 312}, {:OpImageSparseFetch, 5, 313},
      {:OpImageSparseGather, 6, 314}, {:OpImageSparseDrefGather, 6, 315}, {:OpImageSparseTexelsResident, 4, 315},
      {:OpImageSparseRead, 5, 320},{:OpimageSampleFootprintNV, 7, 5283}
    ]
  end

  def id(a) do
    element = Enum.find(instructions(), fn {atom, _word_count, _opcode} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, _word_count, opcode} = element
      opcode
    end
  end
end
