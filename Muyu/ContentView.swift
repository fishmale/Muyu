//
//  ContentView.swift
//  Muyu
//
//  Created by Chao Yang on 2024/11/29.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red]
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

//Apple
//A swift App
