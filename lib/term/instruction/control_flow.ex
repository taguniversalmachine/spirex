defmodule Term.Instruction.ControlFlow do

def instructions() do
  [
    {:OpPhi, 3, 245}, {:OpLoopMerge, 4, 246}, {:OpSelectionMerge, 3, 247}, {:OpLabel, 2, 248},
    {:OpBranch, 2, 249}, {:OpBranchConditional, 4, 250}, {:OpSwitch, 3, 251}, {:OpKill, 1, 252},
    {:OpReturn, 1, 253}, {:OpReturnValue, 2, 254}, {:OpUnreachable, 1, 255}, {:OpLifetimeStart, 3, 256},
    {:OpLifetimeStop, 3, 257}, {:OpTerminateInvocation, 1, 4416}, {:OpDemoteToHelperInvocation, 1, 5380},
    {:OpAtomicLoad, 6, 227}, {:OpAtomicStore, 5, 228}, {:OpAtomicExchange, 7, 229}, {:OpAtomicCompareExchange, 9, 230},
    {:OpAtomicCompareExchangeWeak, 9, 231}, {:OpAtomicIncrement, 6, 232}, {:OpAtomicDecrement,6, 233},
    {}
  ]
end

end
