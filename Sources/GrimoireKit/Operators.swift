infix operator |>

public func |> <A, B>(x: A, f: (A) -> B) -> B {
  return f(x)
}
