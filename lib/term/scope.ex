defmodule Term.Scope do
  def scopes() do
    [
      {:ScopeCrossDevice, 0}, {:ScopeDevice, 1}, {:ScopeWorkgroup, 2}, {:ScopeSubgroup, 3},
      {:ScopeInvocation, 4}, {:ScopeQueueFamily, 5}, {:ScopeQueueFamilyKHR, 5}, {:ScopeShaderCallKHR, 6}
    ]
  end

  def id(a) do
    element = Enum.find(scopes(), fn {atom, _numeric_id} -> atom == a end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
