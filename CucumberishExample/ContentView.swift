import SwiftUI

struct ContentView: View {
    @State var text = "Tap Me"
    
    var body: some View {
        Button(text) {
            self.text = self.text == "Tap Me" ? "Tapped" : "Tap Me"
        }.accessibility(identifier: "mainButton")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
