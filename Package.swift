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
    targets: [
        .binaryTarget(
            name: "AMRAdapterAdmob",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-ADMOB/releases/download/13.1.3/AMRAdapterAdmob.xcframework.zip",
            checksum: "6eb9fff6c9ed77460b9fc981a6238db694d7ddabaa12b1ba2d928251d2dcbd82"
        )
    ]
)
