//
//  CommonSteps.swift
//  CucumberishExampleUITests
//
//  Created by Adam Price on 4/29/20.
//  Copyright © 2020 Adam Price. All rights reserved.
//

import Foundation
import Cucumberish

class CommonMatchers: Matchers {
    
    public static func setup() {
        Given("I launch the app") { args, _ in
            XCUIApplication().launch()
        }
    }
    
}
