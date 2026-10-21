// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationApplovinAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationApplovinAdapter",
            targets: ["AnyThinkMediationApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkApplovinAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkApplovinAdapter/13.6.4.2.9/AnyThinkApplovinAdapter-13.6.4.2.9.zip",
            checksum: "49eea70610e8dfa3475e7346799886a2e8df9ab915d6ec571f87786ad0997059"
        ),
        .target(
            name: "AnyThinkMediationApplovinAdapterTarget",
            dependencies: [
                "AnyThinkApplovinAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationApplovinAdapterTarget"
        )
    ]
)
