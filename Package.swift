// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftConfettiView",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "SwiftConfettiView",
                 targets: ["SwiftConfettiView"]),
    ],
    targets: [
        .target(name: "SwiftConfettiView",
                resources: [.process("Resources")]),
    ]
)
