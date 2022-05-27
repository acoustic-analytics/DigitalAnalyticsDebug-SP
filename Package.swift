
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2022 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using DAMod debug version, if you need release version use https://github.com/acoustic-analytics/DigitalAnalytics-SP")
let package = Package(
    name: "DAMod",
    platforms: [
        .iOS(.v12)
    ],
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
            url: "https://github.com/acoustic-analytics/DigitalAnalytics/releases/download/1.1.69/DAMod_XCFramework_Debug.zip",
            checksum: "74138130056cb0099268acfddb8138b46a0d04901893c664cd0e2212024954e8"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.214/EOCore_XCFramework_Debug.zip",
            checksum: "1f4f359440a62865f11c68953a8239c9b6df113164f1e195e6ef7234881e0727"),
    ]
)
