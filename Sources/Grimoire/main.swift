import GrimoireKit

do {
  try GrimoireKit.command(args: CommandLine.arguments).execute()
} catch {
  print("Something wrong happened:", error)
}
