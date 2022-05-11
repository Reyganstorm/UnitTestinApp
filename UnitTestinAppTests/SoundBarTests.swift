//
//  UnitTestinAppTests.swift
//  UnitTestinAppTests
//
//  Created by Руслан Штыбаев on 11.05.2022.
//

import XCTest
@testable import UnitTestinApp

class SoundBarTests: XCTestCase {
    var sut: SoundBar!
    // sut - system under tests

    override func setUp() {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestValueShouldBeZero() {
        // определяем что дано
        sut.setVolume(to: -1)
        
        
        // что произошло
        let volume = sut.volume
        
        // что должно случиться
        XCTAssert(volume == 0, "Lowest volume should be equel zero")
    }
    
    func testHighestValueShouldBe100() {
        // определяем что дано
        sut.setVolume(to: 101)
        
        
        // что произошло
        let volume = sut.volume
        
        // что должно случиться
        XCTAssert(volume == 100, "Highest volume should be equel zero")
    }

    func testPerformanceExample() throws {
        
        measure {
            sut.setVolume(to: 100)
        }
    }

}
