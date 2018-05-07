//
//  ActionItemTest.swift
//  FacebookActionSheetTests
//
//  Created by Thanathip on 7/5/2561 BE.
//  Copyright © 2561 Thanathip. All rights reserved.
//

import XCTest
@testable import FacebookActionSheet

class ActionItemTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_shouldTakeTitleOnly() {
        let item = ActionItem(title: "title")
        XCTAssertNotNil(item.title, "Initializer should set the item title")
    }

    func testInit_shouldTakeTitleAnsSubtitle() {
        let item = ActionItem(title: "title", subTitle: "sub title")
        XCTAssertEqual(item.subTitle, "sub title")
    }

    func testInit_shouldTakeTitleAndSubtitleAndIconFont() {
        let item = ActionItem(title: "title", subTitle: "sub title", iconFont: "dns")
        XCTAssertEqual(item.iconFont, "dns")
    }

    func testInit_shouldTakeTitleAndIconFontAndType() {
        let item = ActionItem(title: "title", type: .Normal)
        XCTAssertEqual(item.type, .Normal)
    }

    
}
