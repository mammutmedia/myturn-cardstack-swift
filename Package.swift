// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MTCardStack",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "MTCardStack", targets: ["MTCardStack"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.9.0")
    ],
    targets: [
        .target(name: "MTCardStack", dependencies: []),
        .testTarget(name: "MTCardStackTests", dependencies: ["MTCardStack", "SnapshotTesting"])
    ]
)
