defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    {_unit, volume} = volume_pair
    volume
  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions
    {unit, volume } = volume_pair
    def convert_to_milliliter(unit = :milliliter), do: {unit, volume}
    def convert_to_milliliter(unit = :cup), do: {unit, volume * 240}
    def convert_to_milliliter(unit = :fluid_ounce), do: {unit, volume * 30}
    def convert_to_milliliter(unit = :teaspoon), do: {unit, volume * 5}
    def convert_to_milliliter(unit = :tablespoon), do: {unit, volume * 15}
    convert_to_milliliter(volume_pair)
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    {_from_unit, volume } = volume_pair
    def convert_from_milliliter(unit = :milliliter), do: {unit, volume}
    def convert_from_milliliter(unit = :cup), do: {unit, volume / 240}
    def convert_from_milliliter(unit = :fluid_ounce), do: {unit, volume / 30}
    def convert_from_milliliter(unit = :teaspoon), do: {unit, volume / 5}
    def convert_from_milliliter(unit = :tablespoon), do: {unit, volume / 15}
    convert_from_milliliter(unit)
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
