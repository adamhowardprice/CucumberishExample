import XCTest
import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
        
        before({ _ in
            
            AllMatchers.setup()

        })
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
        
    }
    
}
