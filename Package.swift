// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [ .iOS("15.0") ],

    products: [
        .library(
            name: "FolioReaderKit",
            targets: ["FolioReaderKit"]),
    ],
    dependencies: [
        .package(name: "ZipArchive", url: "https://github.com/ZipArchive/ZipArchive.git", "2.4.1"..<"2.4.2"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", from: "4.0.0"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.6.1"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", from: "5.2.0"),
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", from: "10.20.0"),
        .package(url: "https://github.com/tsolomko/SWCompression.git", from: "4.7.0")
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: ["AEXML", "ZipArchive", "MenuItemKit","FontBlaster", .product(name: "RealmSwift", package: "Realm"), "SWCompression"],
            resources: [ .process("Resources") ]),
        
    ]
)
