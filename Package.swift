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
        .detectionManager,
        .sourceManager,
        .beKit,
        .baseUI,
        .smartDocumentCaptureKit,
        .smartDocumentCaptureUI,
        .passiveFaceLivenessKit,
        .passiveFaceLivenessUI,
        .proofOfAddressKit,
        .proofOfAddressUI,
        .secureMeKit,
        .nfcPassportKit,
        .nfcPassportUI,
        .livenessKit,
        .livenessUI,
        .helmetDetectionUI,
        .voiceConsentUI
    ],
    targets: [
        .core,
        .detectionManager,
        .sourceManager,
        .beKit,
        .baseUI,
        .smartDocumentCaptureKit,
        .smartDocumentCaptureUI,
        .passiveFaceLivenessKit,
        .passiveFaceLivenessUI,
        .proofOfAddressKit,
        .proofOfAddressUI,
        .secureMeKit,
        .nfcPassportKit,
        .nfcPassportUI,
        .livenessKit,
        .livenessUI,
        .helmetDetectionUI,
        .voiceConsentUI
    ]
)

enum Au10tixProduct: String {
    
    static let version = "3.2.9"
    
    case Au10tixCore
    case Au10tixBaseUI
    case Au10tixBEKit
    case Au10tixDetectorManager
    case Au10tixHelmetDetectionUI
    case Au10tixLivenessKit
    case Au10tixLivenessUI
    case Au10tixNFCPassportKit
    case Au10tixNFCPassportUI
    case Au10tixPassiveFaceLivenessKit
    case Au10tixPassiveFaceLivenessUI
    case Au10tixProofOfAddressKit
    case Au10tixProofOfAddressUI
    case Au10tixSecureMeKit
    case Au10tixSmartDocumentCaptureKit
    case Au10tixSmartDocumentCaptureUI
    case Au10tixSourceManager
    case Au10tixVoiceConsentUI
    
    var checksum: String {
        switch self {
        case .Au10tixCore: return "40a26a3773a179def6999aeededf988490614ee7f1bea3057495ea3d67be3ec4"
        case .Au10tixBaseUI: return "8e35edc1924e9d892cb5254b95adf1e102e637f43b2bb469b635ddba2d008cc5"
        case .Au10tixBEKit: return "1ef2069f0bde00b69ebfaebfca54ecec44ab3ffd736507577d1769f80ce0d928"
        case .Au10tixDetectorManager: return "1eae55ebf663ac6b869e447c763961804f842967bf7e21077d38d623faab2f5a"
        case .Au10tixHelmetDetectionUI: return "0185fabb0242df9f1f08728902511d6f5d13b51e1675d84d1482c3919369fa25"
        case .Au10tixLivenessKit: return "041a5584538cbd28366400fec42ede8824a0e62483d0bd5548eaaf0d3cdb8504"
        case .Au10tixLivenessUI: return "074df0e12d01229f41321e37e2c64e21821ffc2b460b7441e8b92f88163d0fc1"
        case .Au10tixNFCPassportKit: return "d7021d0565b33877b081846c16089a6d0190f5fe95b375ab1fc09c7bed8e36b6"
        case .Au10tixNFCPassportUI: return "2bee039b6fd2c7f48cc8568eb16ab5b95c13a904e1821964b2539b3e857d109f"
        case .Au10tixPassiveFaceLivenessKit: return "4678af58e480ea08b92ea4ecf4fbaa47511fc9d7c2b19289dd2d36c730188ec3"
        case .Au10tixPassiveFaceLivenessUI: return "de74c9ee177873b578b8f0bd23938b3fa969d50b5611a4f966435c7a7d9f684f"
        case .Au10tixProofOfAddressKit: return "7d30aa2c7ae97ba5fce4657d81479a256566aa822d8d1424593a88375c175da1"
        case .Au10tixProofOfAddressUI: return "c66ff10d374b88645b66dbd0fe720c693d2cb8a01bdadddd3a1b370e095d2f76"
        case .Au10tixSecureMeKit: return "98d92e7dffde16ad498ae51c7b9a3802aa72ef95ed41c55c55e055914e9eb1a0"
        case .Au10tixSmartDocumentCaptureKit: return "ce73176258fb5c4dc8d6e6c9a3e3279b53190edbc314383d5fa5cf53583deffe"
        case .Au10tixSmartDocumentCaptureUI: return "e62ed4c9ef171a86407609b6c12cb979bd27d35fcee7a1f709ebdee65e5d0d2c"
        case .Au10tixSourceManager: return "4f919d7e2e2ad346828e6314e072da5da65235a4eac7fc9c98559c0bb80ab72e"
        case .Au10tixVoiceConsentUI: return "376cae0d39ea56276543a964023104f8ded3f1e5f78666ed60ec6eed3a6bbe63"
        }
    }
    
    var url: String {
        "https://assetsglobaldev.blob.core.windows.net/$web/au10tix/ios/swiftpm/\(Au10tixProduct.version)/\(self.rawValue).xcframework.zip"
    }

    var library: Product {
        return Product.library(name: self.rawValue, targets: [self.rawValue])
    }
    
    var target: Target {
        return Target.binaryTarget(name: self.rawValue, url: self.url, checksum: self.checksum)
    }
}

extension Target {
    static let core = Au10tixProduct.Au10tixCore.target
    static let baseUI = Au10tixProduct.Au10tixBaseUI.target
    static let beKit = Au10tixProduct.Au10tixBEKit.target
    static let detectionManager = Au10tixProduct.Au10tixDetectorManager.target
    static let helmetDetectionUI = Au10tixProduct.Au10tixHelmetDetectionUI.target
    static let livenessKit = Au10tixProduct.Au10tixLivenessKit.target
    static let livenessUI = Au10tixProduct.Au10tixLivenessUI.target
    static let nfcPassportKit = Au10tixProduct.Au10tixNFCPassportKit.target
    static let nfcPassportUI = Au10tixProduct.Au10tixNFCPassportUI.target
    static let passiveFaceLivenessKit = Au10tixProduct.Au10tixPassiveFaceLivenessKit.target
    static let passiveFaceLivenessUI = Au10tixProduct.Au10tixProofOfAddressUI.target
    static let proofOfAddressKit = Au10tixProduct.Au10tixProofOfAddressKit.target
    static let proofOfAddressUI = Au10tixProduct.Au10tixProofOfAddressUI.target
    static let secureMeKit = Au10tixProduct.Au10tixSecureMeKit.target
    static let smartDocumentCaptureKit = Au10tixProduct.Au10tixSmartDocumentCaptureKit.target
    static let smartDocumentCaptureUI = Au10tixProduct.Au10tixSmartDocumentCaptureUI.target
    static let sourceManager = Au10tixProduct.Au10tixSourceManager.target
    static let voiceConsentUI = Au10tixProduct.Au10tixVoiceConsentUI.target
}

extension Product {
    static let core = Au10tixProduct.Au10tixCore.library
    static let baseUI = Au10tixProduct.Au10tixBaseUI.library
    static let beKit = Au10tixProduct.Au10tixBEKit.library
    static let detectionManager = Au10tixProduct.Au10tixDetectorManager.library
    static let helmetDetectionUI = Au10tixProduct.Au10tixHelmetDetectionUI.library
    static let livenessKit = Au10tixProduct.Au10tixLivenessKit.library
    static let livenessUI = Au10tixProduct.Au10tixLivenessUI.library
    static let nfcPassportKit = Au10tixProduct.Au10tixNFCPassportKit.library
    static let nfcPassportUI = Au10tixProduct.Au10tixNFCPassportUI.library
    static let passiveFaceLivenessKit = Au10tixProduct.Au10tixPassiveFaceLivenessKit.library
    static let passiveFaceLivenessUI = Au10tixProduct.Au10tixProofOfAddressUI.library
    static let proofOfAddressKit = Au10tixProduct.Au10tixProofOfAddressKit.library
    static let proofOfAddressUI = Au10tixProduct.Au10tixProofOfAddressUI.library
    static let secureMeKit = Au10tixProduct.Au10tixSecureMeKit.library
    static let smartDocumentCaptureKit = Au10tixProduct.Au10tixSmartDocumentCaptureKit.library
    static let smartDocumentCaptureUI = Au10tixProduct.Au10tixSmartDocumentCaptureUI.library
    static let sourceManager = Au10tixProduct.Au10tixSourceManager.library
    static let voiceConsentUI = Au10tixProduct.Au10tixVoiceConsentUI.library
}

extension Target.Dependency {    
    static let openSSL = byName(name: "")
}
