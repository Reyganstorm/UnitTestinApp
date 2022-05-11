//
//  PersonTests.swift
//  UnitTestinAppTests
//
//  Created by Руслан Штыбаев on 11.05.2022.
//

import XCTest
@testable import UnitTestinApp

class PersonTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testInitPersoneWithNameAndPhone() {
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Foo", surName: "Bar" , phone: "Bas")
        XCTAssertNotNil(person)
    }

}
