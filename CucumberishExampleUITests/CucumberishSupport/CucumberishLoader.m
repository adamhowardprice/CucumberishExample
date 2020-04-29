#import "CucumberishExampleUITests-Swift.h"

__attribute__((constructor))
void CucumberishInit() {
    
    [CucumberishInitializer setupCucumberish];
}
