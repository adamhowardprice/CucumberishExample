import Foundation
import Cucumberish

class CommonMatchers: Matchers {
    
    public static func setup() {
        Given("I launch the app") { args, _ in
            XCUIApplication().launch()
        }
    }
    
}
