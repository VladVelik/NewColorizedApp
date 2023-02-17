//
//  ContentView.swift
//  NewColorizedApp
//
//  Created by Sosin Vladislav on 17.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    @FocusState private var isEditing: Bool
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack {
                ColorizedView(red: red, green: green, blue: blue)
                ColorSliderView(value: $red, color: .red)
                ColorSliderView(value: $green, color: .green)
                ColorSliderView(value: $blue, color: .blue)
                Spacer()
            }
            .focused($isEditing)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isEditing.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
