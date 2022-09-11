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
            url: "https://github.com/mvpaudrey/JoinStories-Binaries/raw/spm/Releases/1.0.2/JoinStoriesSDK.zip",
            checksum: "904b0e0de91b88937f58eeed23ff70bd9e9fbf5518feba6400ba743724275ef6"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
