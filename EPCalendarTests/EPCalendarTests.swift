//
//  EPCalendarTests.swift
//  EPCalendarTests
//
//  Created by Prabaharan Elangovan on 02/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import XCTest
@testable import EPCalendar

class EPCalendarTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test1 () {
        
        let calendarPicker = EPCalendarPicker(startYear: 2000, endYear: 2001, multiSelection: true)
        let navigationController = UINavigationController(rootViewController: calendarPicker)
        UIViewController().present(navigationController, animated: true, completion: nil)
        
        let numOfSections = calendarPicker.collectionView?.numberOfSections
        
        XCTAssertEqual(numOfSections, 24)
        
        
    }
    
}
