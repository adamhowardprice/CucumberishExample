//
//  ContentView.swift
//  CucumberishExample
//
//  Created by Adam Price on 4/28/20.
//  Copyright © 2020 Adam Price. All rights reserved.
//

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
