defmodule Spec do
  @magic << 0x07230203 :: size(32) >>
  @version << 0x00010000 :: size(32) >>
  @generator << 0x00180001 :: size(32) >>

  def new_binary() do
    <<@magic, @version, @generator>>
  end

end
