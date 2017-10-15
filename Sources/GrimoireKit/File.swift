import Foundation

struct File {
  static func read(_ path: String) throws -> String {
    let url = URL(fileURLWithPath: path)
    return try String(contentsOf: url, encoding: .utf8)
  }
}
