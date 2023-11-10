
defmodule Parser.Text do
  import NimbleParsec

  @space 0x0020
  @tab 0x009

  whitespace = utf8_char([@space, @tab, ?\n])

  ignore_whitespace =
    lookahead(whitespace)
    |> repeat(ignore(whitespace))

  date =
    integer(4)
    |> ignore(string("-"))
    |> integer(2)
    |> ignore(string("-"))
    |> integer(2)

  time =
    integer(2)
    |> ignore(string(":"))
    |> integer(2)
    |> ignore(string(":"))
    |> integer(2)
    |> optional(string("Z"))

  defparsec :datetime, date |> ignore(string("T")) |> concat(time)#, debug: true

  hexadecimal =
     ignore(string("0x"))
     |> repeat(ascii_char([?0..?9, ?A..?F]))
     |> tag(:hexadecimal)

  defparsec :hexadecimal, hexadecimal

  defparsec :magic,
    ignore(string(";"))
    |> concat(ignore_whitespace)
    |> ignore(string("Magic:"))
    |> concat(ignore_whitespace)
    |> concat(hexadecimal)
    |> concat(ignore_whitespace)
    |> ignore(string("(SPIR-V)"))

  defparsec :version,
    ignore(string(";"))
    |> concat(ignore_whitespace)
    |> ignore(string("Version:"))
    |> concat(ignore_whitespace)
    |> concat(hexadecimal)
    |> concat(ignore_whitespace)
    |> ignore(string("(Version:"))
    |> concat(ignore_whitespace)
    |> tag(repeat(ascii_char([?0..?9])), :major)
    |> ignore(string("."))
    |> tag(repeat(ascii_char([?0..?9])), :minor)
    |> ignore(string("."))
    |> tag(repeat(ascii_char([?0..?9])), :revision)

  defparsec :generator,
    ignore(string(";"))
    |> concat(ignore_whitespace)
    |> ignore(string("Generator:"))
    |> concat(ignore_whitespace)
    |> concat(hexadecimal)
    |> concat(ignore_whitespace)
    |> concat(ignore(string("(")))
    |> tag(repeat(ascii_char([?A..?Z, ?a..?z, @space ])), :generator_name)
    |> ignore(string(";"))
    |> concat(ignore_whitespace)
    |> tag(repeat(ascii_char([?0..?9])), :generator_version)

defparsec :bound,
   ignore(string(";"))
   |> concat(ignore_whitespace)
   |> ignore(string("Bound:"))
   |> concat(ignore_whitespace)
   |> tag(repeat(ascii_char([?0..?9])), :bound_number)

defparsec :schema,
   ignore(string(";"))
   |> concat(ignore_whitespace)
   |> ignore(string("Schema:"))
   |> concat(ignore_whitespace)
   |> tag(repeat(ascii_char([?0..?9])), :schema)

 defparsec :opcapability,
   ignore(string("OpCapability"))
   |> concat(ignore_whitespace)
   |> concat(choice(Enum.map(Term.Capability.names(), fn cap -> unwrap_and_tag(string(cap), :capability) end)))
   |> tag(:opcapability)
end
