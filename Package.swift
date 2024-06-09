// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestFramework",
    defaultLocalization: "en-US",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestFramework",
            targets: ["GoEyesSDKWrapper"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
                    name: "GoEyesSDKWrapper",
                    dependencies: [.target(name: "TestFramework")]
                ),
        .binaryTarget(
            name: "TestFramework",
//            path: "/Users/guyshaviv/Git/TestPackage/TestFramework.xcframework.zip"
            url: "https://24cb-147-235-215-152.ngrok-free.app/TestFramework.xcframework.zip",
            checksum: "6041fbd6866365076fa81638687c211c4a00772a476219de2c659bbd30516b5b"
        )
    ]
)
