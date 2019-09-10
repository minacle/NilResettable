// swift-tools-version:5.1
// Managed by ice

import PackageDescription

let package = Package(
    name: "NilResettable",
    products: [
        .library(name: "NilResettable", type: .static, targets: ["NilResettable"]),
    ],
    targets: [
        .target(name: "NilResettable", dependencies: []),
        .testTarget(name: "NilResettableTests", dependencies: ["NilResettable"]),
    ]
)
