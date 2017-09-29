//
//  TestingExampleUITests.swift
//  TestingExampleUITests
//
//  Created by Randomness on 2017-09-28.
//  Copyright © 2017 Randomness. All rights reserved.
//

import XCTest

class TestingExampleUITests: XCTestCase {
    
    let app = XCUIApplication()
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let p1 = NSPredicate(format: "label LIKE[c] %@","L1")
        let p2 = NSPredicate(format: "label LIKE[c] %@","11")
        
        let comp = NSCompoundPredicate(andPredicateWithSubpredicates: [p1, p2])
        
//        let pred = NSPredicate(format: "label LIKE[c] %@ || label LIKE[c] %@", "l2")
        
        let x = app.otherElements.containing(comp)
        print("hi")
    }
    
}
