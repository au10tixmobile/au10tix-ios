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
    
    case core = "Au10tixCore"
    case baseUI = "Au10tixBaseUI"
    case beKit = "Au10tixBEKit"
    case detectionManager = "Au10tixDetectorManager"
    case helmetDetectionUI = "Au10tixHelmetDetectionUI"
    case livenessKit = "Au10tixLivenessKit"
    case livenessUI = "Au10tixLivenessUI"
    case nfcPassportKit = "Au10tixNFCPassportKit"
    case nfcPassportUI = "Au10tixNFCPassportUI"
    case passiveFaceLivenessKit = "Au10tixPassiveFaceLivenessKit"
    case passiveFaceLivenessUI = "Au10tixPassiveFaceLivenessUI"
    case proofOfAddressKit = "Au10tixProofOfAddressKit"
    case proofOfAddressUI = "Au10tixProofOfAddressUI"
    case secureMeKit = "Au10tixSecureMeKit"
    case smartDocumentCaptureKit = "Au10tixSmartDocumentCaptureKit"
    case smartDocumentCaptureUI = "Au10tixSmartDocumentCaptureUI"
    case sourceManager = "Au10tixSourceManager"
    case voiceConsentUI = "Au10tixVoiceConsentUI"
    
    var checksum: String {
        switch self {
        case .core: return "40a26a3773a179def6999aeededf988490614ee7f1bea3057495ea3d67be3ec4"
        case .baseUI: return "8e35edc1924e9d892cb5254b95adf1e102e637f43b2bb469b635ddba2d008cc5"
        case .beKit: return "1ef2069f0bde00b69ebfaebfca54ecec44ab3ffd736507577d1769f80ce0d928"
        case .detectionManager: return "1eae55ebf663ac6b869e447c763961804f842967bf7e21077d38d623faab2f5a"
        case .helmetDetectionUI: return "0185fabb0242df9f1f08728902511d6f5d13b51e1675d84d1482c3919369fa25"
        case .livenessKit: return "041a5584538cbd28366400fec42ede8824a0e62483d0bd5548eaaf0d3cdb8504"
        case .livenessUI: return "074df0e12d01229f41321e37e2c64e21821ffc2b460b7441e8b92f88163d0fc1"
        case .nfcPassportKit: return "d7021d0565b33877b081846c16089a6d0190f5fe95b375ab1fc09c7bed8e36b6"
        case .nfcPassportUI: return "2bee039b6fd2c7f48cc8568eb16ab5b95c13a904e1821964b2539b3e857d109f"
        case .passiveFaceLivenessKit: return "4678af58e480ea08b92ea4ecf4fbaa47511fc9d7c2b19289dd2d36c730188ec3"
        case .passiveFaceLivenessUI: return "de74c9ee177873b578b8f0bd23938b3fa969d50b5611a4f966435c7a7d9f684f"
        case .proofOfAddressKit: return "7d30aa2c7ae97ba5fce4657d81479a256566aa822d8d1424593a88375c175da1"
        case .proofOfAddressUI: return "c66ff10d374b88645b66dbd0fe720c693d2cb8a01bdadddd3a1b370e095d2f76"
        case .secureMeKit: return "98d92e7dffde16ad498ae51c7b9a3802aa72ef95ed41c55c55e055914e9eb1a0"
        case .smartDocumentCaptureKit: return "ce73176258fb5c4dc8d6e6c9a3e3279b53190edbc314383d5fa5cf53583deffe"
        case .smartDocumentCaptureUI: return "e62ed4c9ef171a86407609b6c12cb979bd27d35fcee7a1f709ebdee65e5d0d2c"
        case .sourceManager: return "4f919d7e2e2ad346828e6314e072da5da65235a4eac7fc9c98559c0bb80ab72e"
        case .voiceConsentUI: return "376cae0d39ea56276543a964023104f8ded3f1e5f78666ed60ec6eed3a6bbe63"
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
    static let core = Au10tixProduct.core.target
    static let baseUI = Au10tixProduct.baseUI.target
    static let beKit = Au10tixProduct.beKit.target
    static let detectionManager = Au10tixProduct.detectionManager.target
    static let helmetDetectionUI = Au10tixProduct.helmetDetectionUI.target
    static let livenessKit = Au10tixProduct.livenessKit.target
    static let livenessUI = Au10tixProduct.livenessUI.target
    static let nfcPassportKit = Au10tixProduct.nfcPassportKit.target
    static let nfcPassportUI = Au10tixProduct.nfcPassportUI.target
    static let passiveFaceLivenessKit = Au10tixProduct.passiveFaceLivenessKit.target
    static let passiveFaceLivenessUI = Au10tixProduct.passiveFaceLivenessUI.target
    static let proofOfAddressKit = Au10tixProduct.proofOfAddressKit.target
    static let proofOfAddressUI = Au10tixProduct.proofOfAddressUI.target
    static let secureMeKit = Au10tixProduct.secureMeKit.target
    static let smartDocumentCaptureKit = Au10tixProduct.smartDocumentCaptureKit.target
    static let smartDocumentCaptureUI = Au10tixProduct.smartDocumentCaptureUI.target
    static let sourceManager = Au10tixProduct.sourceManager.target
    static let voiceConsentUI = Au10tixProduct.voiceConsentUI.target
}

extension Product {
    static let core = Au10tixProduct.core.library
    static let baseUI = Au10tixProduct.baseUI.library
    static let beKit = Au10tixProduct.beKit.library
    static let detectionManager = Au10tixProduct.detectionManager.library
    static let helmetDetectionUI = Au10tixProduct.helmetDetectionUI.library
    static let livenessKit = Au10tixProduct.livenessKit.library
    static let livenessUI = Au10tixProduct.livenessUI.library
    static let nfcPassportKit = Au10tixProduct.nfcPassportKit.library
    static let nfcPassportUI = Au10tixProduct.nfcPassportUI.library
    static let passiveFaceLivenessKit = Au10tixProduct.passiveFaceLivenessKit.library
    static let passiveFaceLivenessUI = Au10tixProduct.passiveFaceLivenessUI.library
    static let proofOfAddressKit = Au10tixProduct.proofOfAddressKit.library
    static let proofOfAddressUI = Au10tixProduct.proofOfAddressUI.library
    static let secureMeKit = Au10tixProduct.secureMeKit.library
    static let smartDocumentCaptureKit = Au10tixProduct.smartDocumentCaptureKit.library
    static let smartDocumentCaptureUI = Au10tixProduct.smartDocumentCaptureUI.library
    static let sourceManager = Au10tixProduct.sourceManager.library
    static let voiceConsentUI = Au10tixProduct.voiceConsentUI.library
}
