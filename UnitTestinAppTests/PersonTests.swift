//
//  PersonTests.swift
//  UnitTestinAppTests
//
//  Created by Руслан Штыбаев on 11.05.2022.
//

import XCTest
@testable import UnitTestinApp

class PersonTests: XCTestCase {
    var person: Person?

    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone: "Bar")
    }

    override func tearDown() {
        person = nil
        super.tearDown()
    }

    func testInitPersoneWithNameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Foo", surName: "Bar" , phone: "Bas")
        XCTAssertNotNil(person)
    }

    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        XCTAssertEqual("Foo", person?.name)
        XCTAssertEqual("Bar", person?.phone)
    }
    
    func testWhenGivenSurNameSetsSurName() {
        let person = Person(name: "Foo", surName: "Bar", phone: "Bas")
        XCTAssertEqual("Bar", person.surName)
    }
    
    func testInitPersoneWithImage() {
        let image = UIImage(systemName: "person.crop.circle")
        let imageData = image?.pngData()
        let person = Person(name: "Foo", phone: "Bar", image: imageData)
        XCTAssertNotNil(person.image)
    }
}
