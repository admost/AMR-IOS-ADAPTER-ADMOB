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
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterAdmobLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMOB/releases/download/13.1.5/AMRAdapterAdmob.xcframework.zip",
            checksum: "6eb9fff6c9ed77460b9fc981a6238db694d7ddabaa12b1ba2d928251d2dcbd82"
        )
    ]
)
