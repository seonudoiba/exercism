defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    # Please implement the initial/1 function
     full_name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    # Please implement the initials/1 function
    full_name
    |> String.split()
    |> Enum.map(&initial/1)
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)
    "❤-------------------❤
    |  #{initials1}  +  #{initials2}  |
    ❤-------------------❤"

    # Please implement the pair/2 function
  end
end
