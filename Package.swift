// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "JoinStoriesSDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JoinStoriesSDK",
            targets: ["JoinStoriesSDKWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMajor(from: "4.2.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JoinStoriesSDKWrapper",
            dependencies: [
                .target(name: "JoinStoriesSDK"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "AlamofireImage", package: "AlamofireImage"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "JoinStoriesSDK",
            url: "https://github.com/mvpaudrey/JoinStories-Binaries/raw/main/JoinStoriesSDK/JoinStoriesSDK.zip",
            checksum: "8e7810770ff4a2ccfcc55cb7c77e444d3c04ad99792f7a93ea12074fa71f6b73"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
