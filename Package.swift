// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2021 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using DAMod Debug version, if you need release version use https://github.com/acoustic-analytics/DigitalAnalytics-SP")
let package = Package(
    name: "DAMod",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DAMod",
            targets: ["DAMod", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DAMod",
            url: "https://github.com/acoustic-analytics/DigitalAnalytics/releases/download/1.1.42/DAMod_XCFramework_Debug.zip",
            checksum: "08b741e420345245627b40788afd77b89af6a21f2275bebe712f2c84e8866af1"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.48/EOCore_XCFramework_Debug.zip",
            checksum: "c5bb5adce8cd8d1ef65b37d55c548d616b45e5be97c1241d5adc5ef6040f1e22"),
    ]
)
