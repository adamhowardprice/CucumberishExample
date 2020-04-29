import XCTest
import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
        
        before({ _ in
            
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
        })
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
        
    }
    
}
