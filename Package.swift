// swift-tools-version: 5.9
// 此清单按 Flutter iOS Demo 的锁定版本生成。
import PackageDescription

let package = Package(
    name: "AppLovinMediationFyberAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "AppLovinMediationFyberAdapter", targets: ["AppLovinMediationFyberAdapterWrapper"])],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.1"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.6"),
    ],
    targets: [
        .target(name: "AppLovinMediationFyberAdapterWrapper", dependencies: [.target(name: "AppLovinMediationFyberAdapter"), .product(name: "AppLovinSDK", package: "applovin-max-swift-package"), .product(name: "DTExchangeSDK", package: "dtexchangesdk-ios-spm")]),
        .binaryTarget(name: "AppLovinMediationFyberAdapter", url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.6.0.zip", checksum: "be6f4460dccae0e054fba89eea60d0852275159a471073e6e16b0b10590d2c45"),
    ]
)
