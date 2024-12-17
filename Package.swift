// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "StandupTools",
  platforms: [
    .macOS(.v15),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    .package(url: "https://github.com/scinfu/SwiftSoup.git", .upToNextMajor(from: "2.6.0")),
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.2")),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .executableTarget(
      name: "StandupTools",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        .product(name: "SwiftSoup", package: "SwiftSoup"),
        .product(name: "Alamofire", package: "Alamofire"),
      ],
      swiftSettings: swiftSettings
    ),
    .testTarget(
      name: "StandupToolsTests",
      dependencies: [
        .target(name: "StandupTools"),
      ],
      swiftSettings: swiftSettings
    ),
  ]
)

var swiftSettings: [SwiftSetting] { [
  .enableExperimentalFeature("StrictConcurrency"),
] }
