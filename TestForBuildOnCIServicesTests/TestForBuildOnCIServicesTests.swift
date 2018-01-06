//
//  TestForBuildOnCIServicesTests.swift
//  TestForBuildOnCIServicesTests
//
//  Created by Natsuki Yamanaka on 2018/01/06.
//  Copyright © 2018年 Natsuki Yamanaka. All rights reserved.
//

import XCTest
@testable import TestForBuildOnCIServices

class TestForBuildOnCIServicesTests: XCTestCase {
    
    let model = Model()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTaxIncludedPrice() {
        
        var testPrice: UInt = 0
        XCTAssertEqual(model.taxIncludedPrice(taxExcludedPrice: testPrice), 0)
        
        testPrice = 100
        XCTAssertEqual(model.taxIncludedPrice(taxExcludedPrice: testPrice), 108)
    }
    
    func testPerformanceTaxIncludedPrice() {
        
//        self.measureBlock {
            let testPrice: UInt = 100
            XCTAssertEqual(self.model.taxIncludedPrice(taxExcludedPrice: testPrice), 108)
//        }
    }
    
    func testAddSuffixP() {
        var name = "okudera"
        XCTAssertTrue(model.addSuffixP(name: &name))
        
        name = "cap"
        XCTAssertFalse(model.addSuffixP(name: &name))
    }
    
    func testPerformanceAddSuffixP() {
        
//        self.measureBlock {
            var name = "okudera"
        XCTAssertTrue(self.model.addSuffixP(name: &name))
//        }
    }
    
}
