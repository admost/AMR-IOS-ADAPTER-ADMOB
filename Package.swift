// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterAdmob",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterAdmob",
            targets: ["AMRAdapterAdmob"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .exact("13.12.0"))
    ],
    targets: [
        .target(
            name: "AMRAdapterAdmob",
            dependencies: [
                "AMRAdapterAdmobLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "AMRAdapterAdmob",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterAdmobLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMOB/releases/download/13.12.0/AMRAdapterAdmob.xcframework.zip",
            checksum: "0fe88653b146ddd5e843e0e04df1bd90793c1de2256e28d0f58d36a8a667031c"
        )
    ]
)
