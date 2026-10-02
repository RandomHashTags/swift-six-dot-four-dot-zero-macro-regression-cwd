// swift-tools-version:6.3

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "macro-disk-access",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-syntax", exact: "601.0.0"),
    ],
    targets: [
        .macro(
            name: "Macros",
            dependencies: [
                "ReadHoopla",
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),

        .target(name: "ReadHoopla", dependencies: ["VaporUtil"]),
        .target(name: "VaporUtil"),

        .executableTarget(
            name: "macro-disk-access",
            dependencies: ["Macros"]
        )
    ],
    swiftLanguageModes: [.v6]
)
