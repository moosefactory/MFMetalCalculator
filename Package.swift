// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFMetalCalculator",
    platforms: [
        .macOS(.v11),
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MFMetalCalculator",
            targets: ["MFMetalCalculator"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moosefactory/MFFoundation.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/moosefactory/UniColor.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MFMetalCalculator",
            dependencies: ["MFFoundation", "UniColor"]),
        .testTarget(
            name: "MFMetalCalculatorTests",
            dependencies: ["MFMetalCalculator"]
        )
    ]
)
