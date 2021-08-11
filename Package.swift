// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "tradingview-api-swift",
    products: [
        .library(name: "TradingViewApi", targets: ["TradingViewApi"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.4.3")
    ],
    targets: [
        .target(name: "TradingViewApi", dependencies: [
            .product(name: "Logging", package: "swift-log"),
            .product(name: "Alamofire", package: "Alamofire")
        ]),
        .testTarget(name: "TradingViewApiTests", dependencies: [
            .target(name: "TradingViewApi")
        ])
    ],
    swiftLanguageVersions: [.v5]
)
