// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
/*
 * Copyright (c) Au10tix.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import PackageDescription
import Foundation

let package = Package(
    name: "Au10tix",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .core,
    ],
    targets: [
        .core,
    ]
)

enum Au10tixProduct: String {
    
    case core          = "Au10tixCore"
    case sourceManager = "Au10tixSourceManager"
    case sdc           = "Au10tixSmartDocumentCaptureKit"
    
    
    var checksum: String {
        switch self {
        case .core: return "f68125552485b4b7f6420b552ca254c5e00ef6e891cd76bf1d0f5fda448c66dd"
        case .sourceManager: return "f68125552485b4b7f6420b552ca254c5e00ef6e891cd76bf1d0f5fda448c66dd"
        case .sdc: return "f68125552485b4b7f6420b552ca254c5e00ef6e891cd76bf1d0f5fda448c66dd"
        }
    }
    
    var url: String {
        "https://assetsglobaldev.blob.core.windows.net/$web/\(self.rawValue).zip"
    }
    
    var library: Product {
        return Product.library(name: self.rawValue, targets: [self.rawValue])
    }
    
    var target: Target {
        return Target.binaryTarget(name: self.rawValue, url: self.url, checksum: self.checksum)
    }
}

extension Target {
    static let core = Au10tixProduct.core.target
}

extension Product {
    static let core = Au10tixProduct.core.library
}
