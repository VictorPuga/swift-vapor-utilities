// swift-tools-version: 6.3

import PackageDescription

let package = Package(
  name: "swift-vapor-utilities",
  platforms: [
    .macOS(.v15)
  ],
  products: [
    .library(
      name: "ScalekitAuthVapor",
      targets: ["ScalekitAuthVapor"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.115.0"),
    .package(url: "https://github.com/VictorPuga/swift-mcp-server-utilities.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "ScalekitAuthVapor",
      dependencies: [
        .product(name: "ScalekitAuth", package: "swift-mcp-server-utilities"),
        .product(name: "Vapor", package: "vapor"),
      ],
    ),
    .testTarget(
      name: "ScalekitAuthVaporTests",
      dependencies: ["ScalekitAuthVapor"]
    ),
  ],
  swiftLanguageModes: [.v6]
)
