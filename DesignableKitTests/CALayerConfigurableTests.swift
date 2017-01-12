//
//  CALayerConfigurableTests.swift
//  DesignableKit
//
//  Created by Satoshi Ohki on 2016/08/25.
//
//

import XCTest
@testable import DesignableKit

class CALayerConfigurableTests: XCTestCase {

    let layer = CALayer()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testBorderUIColor() {
        let color = UIColor.red
        layer.borderUIColor = color
        XCTAssertEqual(layer.borderUIColor, color)
        if let borderColor = layer.borderColor {
            XCTAssertEqual(UIColor(cgColor: borderColor), color)
        }
        let anotherColor = UIColor.black
        layer.borderUIColor = anotherColor
        XCTAssertEqual(layer.borderUIColor, anotherColor)
        XCTAssertNotEqual(layer.borderUIColor, color)
    }

    func testBackgroundUIColor() {
        let color = UIColor.red
        layer.backgroundUIColor = color
        XCTAssertEqual(layer.backgroundUIColor, color)
        if let backgroundColor = layer.backgroundColor {
            XCTAssertEqual(UIColor(cgColor: backgroundColor), color)
        }
        let anotherColor = UIColor.black
        layer.backgroundUIColor = anotherColor
        XCTAssertEqual(layer.backgroundUIColor, anotherColor)
        XCTAssertNotEqual(layer.backgroundUIColor, color)
    }

    func testShadowUIColor() {
        let color = UIColor.red
        layer.shadowUIColor = color
        XCTAssertEqual(layer.shadowUIColor, color)
        if let shadowColor = layer.shadowColor {
            XCTAssertEqual(UIColor(cgColor: shadowColor), color)
        }
        let anotherColor = UIColor.black
        layer.shadowUIColor = anotherColor
        XCTAssertEqual(layer.shadowUIColor, anotherColor)
        XCTAssertNotEqual(layer.shadowUIColor, color)
    }
}
