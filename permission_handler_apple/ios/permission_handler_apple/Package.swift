// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "permission_handler_apple",
    platforms: [
        .iOS("16.0"),
    ],
    products: [
        .library(name: "permission-handler-apple", targets: ["permission_handler_apple"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "permission_handler_apple",
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ],
            cSettings: [
                .headerSearchPath("include/permission_handler_apple")
            ]
        )
    ]
)
