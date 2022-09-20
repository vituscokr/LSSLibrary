// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
/*
let package = Package(
    name: "LSSLibrary",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LSSLibrary",
            targets: ["LSSLibrary"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LSSLibrary",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "LSSLibraryTests",
            dependencies: ["LSSLibrary"]),
    ]
)
 
 Showing Recent Messages
 Error: The folder “7ffc1a0aa421bfbddf0a27749e0dcf3d49377ee842715a119a02bcd06c0a3a2f.plist” doesn’t exist.
 "227258fdb2f920f8ce90d4f08d019e1b0db5a4ad2090afa012fd7c2c91716df3"
 "7ffc1a0aa421bfbddf0a27749e0dcf3d49377ee842715a119a02bcd06c0a3a2f"
*/
let package = Package(
    name: "LSSLibrary",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LSSLibrary",
            targets: ["LSSLibrary"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.4.3"),
        .package(url: "https://github.com/tilltue/TLPhotoPicker.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "LSSLibrary",
            dependencies: [
                "SwiftyJSON",
                "Alamofire",
                .product(name: "KingfisherSwiftUI", package: "Kingfisher"),
                .product(name: "Lottie", package: "lottie-ios"),
                "TLPhotoPicker",
            ],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        ),
    ]
)
