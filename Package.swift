// swift-tools-version:3.1

import PackageDescription
import Foundation

var isTesting: Bool {
  let env = ProcessInfo.processInfo.environment
  guard let isTesting = env["GRIMOIRE_ISTESTING"] else { return false }
  return NSString(string: isTesting).boolValue
}

var testDependencies: [Package.Dependency] {
  return [
    .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1, minor: 1),
    .Package(url: "https://github.com/Quick/Nimble.git", majorVersion: 7)
  ]
}

var baseDependencies: [Package.Dependency] {
  return [
    .Package(url: "https://github.com/behrang/YamlSwift", majorVersion: 3, minor: 4)
  ]
}

let package = Package(
  name: "Grimoire",
  targets: [
    Target(name: "Grimoire", dependencies: ["GrimoireKit"]),
    Target(name: "GrimoireKit")
  ],
  dependencies: {
    var deps = baseDependencies
    if isTesting { deps += testDependencies }
    return deps
 }()
)
