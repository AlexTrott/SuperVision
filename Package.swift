// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SuperVision",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SuperVision",
            targets: ["SuperVision"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mixpanel/mixpanel-swift.git", from: "2.0.0"),
        .package(name: "Sentry", url: "https://github.com/getsentry/sentry-cocoa", from: "6.2.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SuperVision",
            dependencies: [
                "Mixpanel",
                "Sentry"
            ]
        ),
        .testTarget(
            name: "SuperVisionTests",
            dependencies: ["SuperVision"]),
    ]
)
