// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DevHelper07",
    platforms: [
            .iOS(.v13)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DevHelper07",
            targets: ["DevHelper07"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/DevKind89/DevHelper07", from: "1.0.0"),
        .package(url: "https://github.com/lachlanbell/SwiftOTP.git", .upToNextMinor(from: "3.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DevHelper07",
            dependencies: ["SwiftOTP"]),
        .testTarget(
            name: "DevHelper07Tests",
            dependencies: ["DevHelper07"]),
    ]
)
