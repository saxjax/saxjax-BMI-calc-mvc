//
//  saxjax_BMI_calc_mvcUITestsLaunchTests.swift
//  saxjax BMI calc mvcUITests
//
//  Created by Jakob Skov Søndergård on 15/07/2022.
//

import XCTest

class saxjax_BMI_calc_mvcUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
