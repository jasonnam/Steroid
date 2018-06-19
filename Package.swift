// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Steroid",
    products: [
        .library(
            name: "Steroid",
            targets: ["Steroid"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Steroid",
            dependencies: []),
        .testTarget(
            name: "SteroidTests",
            dependencies: ["Steroid"]),
    ]
)
