// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SafekiddoSwiftUIButtonSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SafekiddoSwiftUIButtonSDK",
            targets: ["ButtonCore", "ButtonViews"]
        )
    ],
    dependencies: [],
    targets: [
        // Core: protokoły i design tokens
        .target(
            name: "ButtonCore",
            path: "Sources/ButtonCore"
        ),
        // Views: TemplateButton i gotowe template’y
        .target(
            name: "ButtonViews",
            dependencies: ["ButtonCore"],
            path: "Sources/ButtonViews"
        ),
        // Domyślny target wygenerowany przez SPM (można usunąć folder albo zachować pusty)
        .target(
            name: "SafekiddoSwiftUIButtonSDK",
            path: "Sources/SafekiddoSwiftUIButtonSDK"
        ),
        // Testy: XCTest dla ButtonViews
        .testTarget(
            name: "SafekiddoSwiftUIButtonSDKTests",
            dependencies: ["ButtonViews"],
            path: "Tests/SafekiddoSwiftUIButtonSDKTests"
        )
    ]
)
