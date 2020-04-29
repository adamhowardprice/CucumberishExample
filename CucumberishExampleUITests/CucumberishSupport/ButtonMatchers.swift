//
//  ButtonMatchers.swift
//  CucumberishExampleUITests
//
//  Created by Adam Price on 4/29/20.
//  Copyright © 2020 Adam Price. All rights reserved.
//

import Foundation
import Cucumberish

class ButtonMatchers: Matcher {
    
    public static func setup() {
        Given("I launch the app") { args, _ in
            XCUIApplication().launch()
        }
        
        When("I tap the button") { args, _ in
            XCUIApplication().buttons["mainButton"].tap()
        }
        
        Then("the button should say \"([^\\\"]*)\"") { args, _ in
            let text = (args?[0])!
            XCTAssertTrue(XCUIApplication().buttons[text].exists)
        }
        
        When("I tap the button again") { args, _ in
            XCUIApplication().buttons["mainButton"].tap()
        }
    }
    
}
