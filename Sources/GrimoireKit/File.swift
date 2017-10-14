import Foundation

struct File {
  static func read(_ path: String) throws -> String {
    let path = "file://" + path
    guard let url = URL(string: path) else {
      throw Error.invalidFilePath(path)
    }
    return try String(contentsOf: url, encoding: .utf8)
  }
}

extension File {
  enum Error: LocalizedError, Equatable {
    case invalidFilePath(String)

    var errorDescription: String? {
      switch self {
      case .invalidFilePath(let path):
        return "Invalid file path \"\(path)\"."
      }
    }

    static public func == (x: Error, y: Error) -> Bool {
      return x.localizedDescription == y.localizedDescription
    }
  }
}
