defmodule TextParserTest do
  use ExUnit.Case

  test "date" do
    tree = Parser.Text.datetime("2010-04-17T14:12:34Z")
    assert tree == {:ok, [2010, 4, 17, 14, 12, 34, "Z"], "", %{}, {1, 0}, 20}
  end

  test "hexadecimal" do
    tree = Parser.Text.hexadecimal("0x34")
    assert tree == {:ok, [{:hexadecimal, '34'}], "", %{}, {1, 0}, 4}
  end

  test "magic" do
    magic_text = "; Magic:     0x07230203 (SPIR-V)"
    tree = Parser.Text.magic(magic_text)
    assert tree == {:ok, [{:hexadecimal, '07230203'}], "", %{}, {1, 0}, 32}
  end

  test "version" do
    version_text = "; Version:   0x00010000 (Version: 1.0.0)"
    tree = Parser.Text.version(version_text)
    assert tree == {:ok, [hexadecimal: '00010000', major: '1', minor: '0', revision: '0'], ")", %{}, {1, 0}, 39}
  end

  test "generator" do
    generator_text = "; Generator: 0x00080001 (Khronos Glslang Reference Front End; 1)"
    tree = Parser.Text.generator(generator_text)
    assert tree == {:ok, [hexadecimal: '00080001', generator_name: 'Khronos Glslang Reference Front End', generator_version: '1'], ")", %{}, {1, 0}, 63}
  end

  test "bound" do
    bound_text = "; Bound:     63"
    tree = Parser.Text.bound(bound_text)
    assert tree == {:ok, [bound_number: '63'], "", %{}, {1, 0}, 15}
  end

  test "schema" do
    schema_text = "; Schema:    0"
    tree = Parser.Text.schema(schema_text)
    assert tree == {:ok, [schema: '0'], "", %{}, {1, 0}, 14}
  end

  test "capability" do
     capability_text = "OpCapability Shader"
     tree = Parser.Text.opcapability(capability_text)
     assert tree == {:ok, [opcapability: [{:capability, "Shader"}]], "", %{}, {1, 0}, 19}
  end

#  test "parse program" do
#    {:ok, prog} = File.read("test/support/fragment_shader.spirv.txt")
#    assert prog == False
#  end


end
