import Foundation

struct Fixture {
  static func path(_ relativePath: String) -> String {
    return dirPath + relativePath
  }

  private static var dirPath: String {
    let currentDir = FileManager.default.currentDirectoryPath
    return currentDir + "/Tests/GrimoireKitTests/Fixtures/"
  }
}
