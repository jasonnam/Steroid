// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Steroid",
    products: [
        .library(
            name: "Steroid",
            targets: ["Steroid"])
    ],
    targets: [
        .target(
            name: "Steroid",
            dependencies: []),
        .testTarget(
            name: "SteroidTests",
            dependencies: ["Steroid"])
    ]
)
