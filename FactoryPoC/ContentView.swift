//
//  ContentView.swift
//  FactoryPoC
//
//  Created by Frank Solleveld on 20/06/2023.
//

import SwiftUI
import Factory

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
