// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLanguageVersionsParamSemantics",
    targets: [
        .executableTarget(name: "SwiftLanguageVersionsParamSemantics"),
    ],
    // Comment out/in various language modes or combinations.
    // Observations:
    // 1. If the array contains a single item, this becomes the language mode for the target.
    // 2. If the array contains multiple items, the highest one supported by the active compiler becomes the language mode for the target.
    //
    // Test this on the command line! Xcode 16.3 is very unreliable in detecting package manifest changes.
    swiftLanguageModes: [
//        .v4,
//        .v4_2,
        .v5,
//        .v6,
    ]
)
