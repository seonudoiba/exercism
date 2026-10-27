defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    {unit, volume} = volume_pair
    volume

  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions
    {unit, volume} = volume_pair
    cond do
      unit == :mL -> {:milliliter, volume}
      unit == :cup -> {:milliliter, volume * 240}
      unit == :fluid_ounce -> {:milliliter, volume * 30}
      unit == :teaspoon -> {:milliliter, volume * 5}
      unit == :tablespoon -> {:milliliter, volume * 15}
      true -> {:milliliter, volume}
    end
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    {from_unit, volume} = volume_pair
    cond do
      unit == :mL -> {unit, volume}
      unit == :cup -> {unit, volume / 240}
      unit == :fluid_ounce -> {unit, volume / 30}
      unit == :teaspoon -> {unit, volume / 5}
      unit == :tablespoon -> {unit, volume / 15}
      true -> {unit, volume}
    end
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
