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
            targets: ["AMRAdapterAdmobTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.80"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .exact("13.1.0"))
    ],
    targets: [
        .target(
            name: "AMRAdapterAdmobTarget",
            dependencies: [
                "AMRAdapterAdmob",
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
            name: "AMRAdapterAdmobBinary",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMOB/releases/download/13.1.2/AMRAdapterAdmob.xcframework.zip",
            checksum: "c9fe5cc603d7f245c9e3e01f61e6caedb38820608d4f85cdf71cce3491323f9c"
        )
    ]
)
