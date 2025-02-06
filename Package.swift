// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDKNativePack",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SDKNativePack",
            targets: ["SDKNativePack"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SDKNativePack",
            dependencies: [
                .target(name: "App", condition: .when(platforms: [.iOS])),
                .target(name: "Flutter", condition: .when(platforms: [.iOS])),
                .target(name: "flutter_inappwebview_ios", condition: .when(platforms: [.iOS])),
                .target(name: "OrderedSet", condition: .when(platforms: [.iOS])),
                .target(name: "permission_handler_apple", condition: .when(platforms: [.iOS])),
    
            ]
        ),
        .binaryTarget(name: "App", path: "./Frameworks/App.xcframework"),
        .binaryTarget(name: "Flutter", path: "./Frameworks/Flutter.xcframework"),
        .binaryTarget(name: "flutter_inappwebview_ios", path: "./Frameworks/flutter_inappwebview_ios.xcframework"),
        .binaryTarget(name: "OrderedSet", path: "./Frameworks/OrderedSet.xcframework"),
        .binaryTarget(name: "permission_handler_apple", path: "./Frameworks/permission_handler_apple.xcframework"),

    ]
)
