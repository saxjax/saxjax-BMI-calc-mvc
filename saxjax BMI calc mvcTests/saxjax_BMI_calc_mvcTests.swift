//
//  saxjax_BMI_calc_mvcTests.swift
//  saxjax BMI calc mvcTests
//
//  Created by Jakob Skov Søndergård on 15/07/2022.
//

import XCTest
@testable import saxjax_BMI_calc_mvc

class saxjax_BMI_calc_mvcTests: XCTestCase {

    var SUT: CalculatorBrain = CalculatorBrain()

    override func setUpWithError() throws {
         SUT = CalculatorBrain()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
//arrange
        let height:Float = 1.0
        let weight:Float = 100.0
        let expected:String = String(format: "%.1f",  100.0)
//act
        SUT.calculateBMI(heightInMeters: height, weightInKg: weight)
        let actual = SUT.getBMIValue()
//assert
        XCTAssertEqual(expected, actual)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
