//
//  RestocksiOSSnapshotTests.swift
//  RestocksiOSSnapshotTests
//
//  Created by Jolanda Arends on 02/11/2021.
//

import XCTest
import SwiftUI
import SnapshotTesting

// MARK: - Layout

class SnapshotsHelper {
    enum SnapshotLayouts: String, CaseIterable {
        case iPhoneSe
        case iPhoneX
        case iPhone8Plus
        case iPadMini_portrait
        case iPadMini_landscape
        case iPadPro12_9_portrait
        case iPadPro12_9_landscape

        var layout: SwiftUISnapshotLayout {
            switch self {
            case .iPhoneSe: return .device(config: .iPhoneSe)
            case .iPhoneX: return .device(config: .iPhoneX)
            case .iPhone8Plus: return .device(config: .iPhone8Plus)
            case .iPadMini_portrait: return .device(config: .iPadMini(.portrait))
            case .iPadMini_landscape: return .device(config: .iPadMini(.landscape))
            case .iPadPro12_9_portrait: return .device(config: .iPadPro12_9(.portrait))
            case .iPadPro12_9_landscape: return .device(config: .iPadPro12_9(.landscape))
            }
        }
    }
}

enum SnapshotCustomLayouts {
    case custom(config: ViewImageConfig, height: CGFloat)

    var layout: SwiftUISnapshotLayout {
        switch self {
        case let .custom(config, customHeight):
            guard let width = config.size?.width else { return .device(config: config) }
            return .fixed(width: width, height: customHeight)
        }
    }

    var name: String {
        switch self {
        case let .custom(config, customHeight):
            guard let width = config.size?.width else {
                return ""
            }
            return "customWidth_\(Int(width))_andCustomHeight_\(Int(customHeight))"
        }
    }
}

class RestocksiOSSnapshotTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        func test_onboardingChoiceView_withoutImage() {
            let sut = Text("test")

            SnapshotsHelper.SnapshotLayouts.allCases.forEach {
                assertSnapshot(matching: sut, as: .image(layout: $0.layout), named: $0.rawValue)
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
