import ProjectDescription

let project = Project(
    name: "SteroidDebug",
    targets: [
        .init(
            name: "SteroidDebug",
            platform: .iOS,
            product: .app,
            bundleId: "com.steroid.debug",
            infoPlist: "Debug/Info.plist",
            sources: [
                "Debug/AppDelegate.swift",
                "Sources/SteroidUIKit/**"
            ]
        )
    ]
)
