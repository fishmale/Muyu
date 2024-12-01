//
//  ContentView.swift
//  Muyu
//
//  Created by Chao Yang on 2024/11/29.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .cyan, .teal, .yellow, .orange, .pink, .green]
    @State var selectedColor = Color.yellow
    @State private var _touchCount: Double = 0.0{
        didSet{
            if _touchCount == 30.0 {
                _touchCount = 0.0
            }
        }
    }
    @State var tapped: Int = 0
    var touchCount: Double {
        _touchCount
    }
    
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

//A swift App
//Powered by Wang YuXiao. Code By Charlie Yang
