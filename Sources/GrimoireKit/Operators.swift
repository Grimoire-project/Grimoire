infix operator |>: LogicalConjunctionPrecedence

public func |> <A, B>(x: A, f: (A) -> B) -> B {
  return f(x)
}
