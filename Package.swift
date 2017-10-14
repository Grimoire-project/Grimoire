// swift-tools-version:3.1

import PackageDescription

let package = Package(
 name: "Grimoire",
 targets: [
   Target(name: "Grimoire", dependencies: ["GrimoireKit"]),
   Target(name: "GrimoireKit")
 ],
  dependencies: [
    .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1, minor: 1),
    .Package(url: "https://github.com/Quick/Nimble.git", majorVersion: 7),
    .Package(url: "https://github.com/behrang/YamlSwift", majorVersion: 3, minor: 4)
  ]
)
