defmodule BirdCount do
  def today(list) do
    # Please implement the today/1 function
    [head | _] = list
    if head == nil do
      0
    else
      head
    end
  end

  def increment_day_count(list) do
    # Please implement the increment_day_count/1 function
    [head | tail] = list
    [head + 1 | tail]
  end

  def has_day_without_birds?([]) do
    # Please implement the has_day_without_birds?/1 function
    false
  end

  def has_day_without_birds?(list) do
    # Please implement the has_day_without_birds?/1 function
    [head | tail] = list
    head == 0 || has_day_without_birds?(tail)
  end

  def total([]) do
    # Please implement the total/1 function
    0
  end
  def total(list) do
    # Please implement the total/1 function
    [head | tail] = list
    head + total(tail)
  end

  def busy_days([]) do
    # Please implement the busy_days/1 function
    0
  end
  def busy_days(list) do
    # Please implement the busy_days/1 function
    [head | tail] = list
    if head > 4 do
      1 + busy_days(tail)
    else
      busy_days(tail)
    end
  end
end
