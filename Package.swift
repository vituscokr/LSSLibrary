// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "LSSLibrary",
//    platforms: [
//        .macOS(.v10_12),
//        .iOS(.v13)
//    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "LSSLibrary",
            targets: ["LSSLibrary"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "5.1.0")),
//        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0")),
//        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .branch("master")),
//        .package(url: "https://github.com/airbnb/lottie-ios.git", .branch("master")),
        //.package(url: "https://github.com/tilltue/TLPhotoPicker.git", .upToNextMajor(from: "2.1.0")),
        
        //.package(url: "https://github.com/realm/realm-swift.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .binaryTarget(
            name: "SwiftLintBinary",
            url:
                "https://github.com/realm/SwiftLint/releases/download/0.49.1/SwiftLintBinary-macos.artifactbundle.zip",
            checksum: "227258fdb2f920f8ce90d4f08d019e1b0db5a4ad2090afa012fd7c2c91716df3"
        ),
        .plugin(
            name: "SwiftLintPlugin",
            capability: .buildTool(),
            dependencies: ["SwiftLintBinary"]
        ),
        .target(
            name: "LSSLibrary",
            dependencies: [
//                "SwiftyJSON",
//                "Alamofire",
//                .product(name: "KingfisherSwiftUI", package: "Kingfisher"),
//                .product(name: "Lottie", package: "lottie-ios"),
                //"TLPhotoPicker",
            ],
            plugins: ["SwiftLintPlugin"]
        ),
        .testTarget(
            name: "LSSLibraryTests",
            dependencies: ["LSSLibrary"]),
    ]
)

