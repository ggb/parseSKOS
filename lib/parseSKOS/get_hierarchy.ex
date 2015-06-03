defmodule ParseSKOS.Hierarchy do
  require Logger

  alias ParseSKOS.ParseTurtle
  alias ParseSKOS.ParseNTriple

  @stw ParseTurtle.get(:stw)
  @ccs ParseTurtle.get(:ccs)

  def get(:stw), do: @stw
  def get(:ccs), do: @ccs
  def get(filename) do
    case String.split(filename, ".") do
      [ name, "ttl" ] -> 
        ParseTurtle.get("#{name}.ttl")
      [ name, "n3" ] ->
        ParseNTriple.get("#{name}.n3")
      _ -> 
        Logger.debug "Porphyr.Hierarchy.get => unknown filetype"
    end
  end


end
