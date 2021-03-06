defmodule Printer do
  @type stew :: Stewtype.t
  @callback print(stew) :: {:ok, term} | {:error, term}
end

defmodule VegStewB do
  @behaviour Printer
  def print(s) do
    case s.stewtype do
      :veg ->
        {:ok, "It's a vegetable stew"}
      _ ->
        {:error, "Unknown stew"}

    end
  end
end

defmodule BeefStewB do
  @behaviour Printer
  def print(s) do
    case s.stewtype do
      :beef ->
        {:ok, "It's a beef stew"}
      _ ->
        {:error, "Unknown stew"}
    end
  end
end
