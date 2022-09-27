// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "JoinStoriesSDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JoinStoriesSDK",
            targets: ["JoinStoriesSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "JoinStoriesSDK",
            url: "https://github.com/mvpaudrey/JoinStories-Binaries/raw/spm/Releases/1.1.0/JoinStoriesSDK.zip",
            checksum: "a0519284fe0cd887354902865036260260164547b1d2224c9f6619e8a3cb51df"
        ),
    ],
    swiftLanguageVersions: [.v5]
)