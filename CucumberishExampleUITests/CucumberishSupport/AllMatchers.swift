import Foundation
import Cucumberish

protocol Matchers {
    
    static func setup()
    
}

class AllMatchers {
    
    public static let matchers: [Matchers.Type] = [ButtonMatchers.self, CommonMatchers.self]
    
    public static func setup() {
        matchers.forEach {
            $0.setup()
        }
    }
    
}
