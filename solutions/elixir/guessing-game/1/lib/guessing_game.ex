defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess) do
    # Please implement the compare/2 function
    cond do
      guess < secret_number -> "Too low"
      guess > secret_number -> "Too high"
      guess == :no_guess -> "Make a guess"
      (secret_number == guess + 1) or (secret_number == guess - 1) -> "So close"
      true -> "Correct"
    end
  end
end
