// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScrumPackages",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "ModuleP",
            targets: ["ModuleP"]
        ),
        .library(
            name: "ModuleA",
            targets: ["ModuleA"]
        ),
        .library(
            name: "ModuleB",
            targets: ["ModuleB"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory.git", from: "2.1.5")
    ],
    targets: [
        .target(
            name: "ModuleP",
            dependencies: [
                .product(name: "Factory", package: "Factory")
            ]
        ),
        .target(
            name: "ModuleA",
            dependencies: [
                "ModuleP",
                .product(name: "Factory", package: "Factory")
            ]
        ),
        .target(
            name: "ModuleB",
            dependencies: [
                "ModuleP",
                .product(name: "Factory", package: "Factory")
            ]
        )
    ]
)
