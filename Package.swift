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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .exact("13.1.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMOB/releases/download/13.1.7/AMRAdapterAdmob.xcframework.zip",
            checksum: "773d0141b6b3fb0e4b15fd2719b8fc870f9de8a69a8f45b0f92ef9a3da12d74c"
        )
    ]
)
