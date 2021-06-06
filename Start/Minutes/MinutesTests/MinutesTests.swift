//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Ahmed on 06/06/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {

    var entryUnderTest : Entry!
    override  func setUp() {
      
        super.setUp()
        entryUnderTest = Entry("Title","Content")
        
    }
    override  func tearDown() {
        entryUnderTest = nil

        super.tearDown()
       
    }
    func testSerialization(){
        let serializData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializData!)
        XCTAssertEqual(entry?.title, "Title", "Title dosn't match")
        XCTAssertEqual(entry?.content, "Content", "Content  dosn't match")
        
    }
}
