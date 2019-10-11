// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Steroid",
    products: [
        .library(
            name: "Steroid",
            targets: ["Steroid"]),
        .library(
            name: "SteroidUIKit",
            targets: ["SteroidUIKit"])
    ],
    targets: [
        .target(
            name: "Steroid",
            dependencies: []),
        .target(
            name: "SteroidUIKit",
            dependencies: [])
    ]
)
