// swift-tools-version:5.3

import PackageDescription

let package = Package(

    name: "TargetSharingKit",
    platforms: [
        .iOS(.v13),
    ],

    products: [
        .library(
            name: "AppKit", 
            targets: [
                "Working",
            ]
        ),
        .library(
            name: "TestKit",
            targets: [
                "Testing",
            ]
        ),
    ],

    dependencies: [
    ],

    targets: [
        
        .target(
            name: "Environment",
            dependencies: [
            ],
            path: "Environment/Sources"
        ),
        .testTarget(
            name: "EnvironmentTests",
            dependencies: [
                "Environment",
            ],
            path: "Environment/Tests"
        ),
        
        .target(
            name: "Working",
            dependencies: [
                "Environment",
            ],
            path: "Working/Sources"
        ),
        .testTarget(
            name: "WorkingTests",
            dependencies: [
                "Working",
            ],
            path: "Working/Tests"
        ),
        
        .target(
            name: "Testing",
            dependencies: [
                "Environment",
            ],
            path: "Testing/Sources"
        ),
        .testTarget(
            name: "TestingTests",
            dependencies: [
                "Testing",
            ],
            path: "Testing/Tests"
        ),
    ]
)    
