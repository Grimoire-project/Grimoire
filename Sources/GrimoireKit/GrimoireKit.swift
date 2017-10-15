public struct GrimoireKit {
  public static func command(args: [String]) -> Command {
    let args = Array(args.dropFirst())
    guard args == ["update"] else {
      return Help()
    }
    return Update()
  }
}
