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
            VStack {
                Text("Muyu")
                    .font(.system(.largeTitle, design: .serif))
                Text("App")
                    .font(.system(.footnote, design: .serif))
                    .foregroundStyle(.gray)
            }
            .padding()
            
            Divider()
            
            Gauge(value: touchCount, in: 0...30, label: {
                Image(systemName: "leaf.fill")
                    .foregroundStyle(.yellow)
            })
            .gaugeStyle(DefaultGaugeStyle())
            .tint(Gradient(colors: [.gray, .yellow]))
            .padding()
            
            Spacer()
            
            if Int(touchCount) != 0 {
                if (Int(touchCount) % 10) == 0{
                    Text("叶片" + "10")
                        .foregroundStyle(selectedColor)
                }
            }
            
            Button{
                selectedColor = colors.randomElement() ?? .yellow
                _touchCount += 1
                tapped += 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){tapped -= 1}
            }label: {
                Image(systemName: "leaf.fill")
                    .font(.system(size: 230))
                    .foregroundStyle(selectedColor)
                    .scaleEffect(tapped > 0 ? 1.2 : 1)
                    .animation(Animation.linear(duration: 0.1), value: UUID())
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//A swift App
//Powered by Wang YuXiao. Code By Charlie Yang
