// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "dotLottie",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_12),
    .tvOS(.v9)
  ],
  products: [
    .library(
      name: "dotLottie",
      targets: ["dotLottie"]),
  ],
  dependencies: [
    .package(url: "https://github.com/airbnb/lottie-spm", from: "4.4.1"),
    .package(url: "https://github.com/dotLottie/dotLottieLoader", exact: "0.2.0"),
  ],
  targets: [
    .target(
      name: "dotLottie",
      dependencies: [
        .product(name: "Lottie", package: "lottie-spm"),
        .byName(name: "dotLottieLoader"),
      ]),
    .testTarget(
      name: "dotLottieTests",
      dependencies: ["dotLottie"]),
  ]
)
