infix operator |>: LogicalConjunctionPrecedence

public func |> <A, B>(x: A, f: (A) -> B) -> B {
  return f(x)
}

public func |> <A, B>(x: A, f: (A) throws -> B) throws -> B {
  return try f(x)
}
