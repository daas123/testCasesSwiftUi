//
//  ConverterTest.swift
//  ConverterTest
//
//  Created by Neosoft on 28/11/23.
//

import XCTest

final class ConverterTest: XCTestCase {
    
    var sut : Converter!
    override func setUpWithError() throws {
        sut = Converter()
    }
    
    override func tearDownWithError() throws{
        sut = nil
    }
    
    func test_Convert10_returns800(){
        let actual = sut.convertInrToUsd(inr: "10")
        let expected = "833.80"
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_ConvertNeg10_returnErrormsg(){
        let actual = sut.convertInrToUsd(inr: "-10")
        let expected = "Enter the Positive value"
        
        XCTAssertEqual(actual, expected)
    }

}
