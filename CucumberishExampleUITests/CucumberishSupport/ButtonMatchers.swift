import Foundation
import Cucumberish

class ButtonMatchers: Matchers {
    
    public static func setup() {
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
