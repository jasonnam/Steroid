import ProjectDescription

let project = Project(
    name: "SteroidUIKit",
    targets: [
        .init(
            name: "SteroidUIKit",
            platform: .iOS,
            product: .app,
            bundleId: "com.steroid.uikit",
            infoPlist: "Debug/Info.plist",
            sources: [
                "Debug/AppDelegate.swift",
                "Sources/SteroidUIKit/**"
            ]
        )
    ]
)
