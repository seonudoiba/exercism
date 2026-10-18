defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      # level == 1 and legacy? -> :debug
      # level == 2 and legacy? -> :info
      # level == 3 and legacy? -> :warn
      # level == 4 and legacy? -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    logLabel = LogLevel.to_label(level, legacy?)
    cond do
      logLabel == :error or logLabel == :fatal -> :ops
      logLabel == :unknown and legacy? -> :dev1
      logLabel == :unknown and not legacy? -> :dev2
      true -> :false
    end
  end
end
