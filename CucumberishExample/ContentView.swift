//
//  ContentView.swift
//  CucumberishExample
//
//  Created by Adam Price on 4/28/20.
//  Copyright © 2020 Adam Price. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("tap")
        }) {
            Text("Tap Me")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
