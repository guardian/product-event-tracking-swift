// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ophan-product-tracking-swift",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "ProductEventModels",
            targets: ["ProductEventModels"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ProductEventModels"
        )
    ]
)
