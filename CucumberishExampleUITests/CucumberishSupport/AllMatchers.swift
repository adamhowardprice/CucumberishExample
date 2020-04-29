import Foundation
import Cucumberish

protocol Matcher {
    
    static func setup()
    
}

class AllMatchers {
    
    public static let matchers: [Matcher.Type] = [ButtonMatchers.self]
    
    public static func setup() {
        matchers.forEach {
            $0.setup()
        }
    }
    
}
