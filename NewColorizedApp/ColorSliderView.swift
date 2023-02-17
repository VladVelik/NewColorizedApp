//
//  ColorSliderView.swift
//  NewColorizedApp
//
//  Created by Sosin Vladislav on 17.02.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    
    @State var text: String = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(value.formatted())")
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = newValue.formatted()
                }
            TextFieldView(text: $text, value: $value)
        }
        .onAppear {
            text = value.formatted()
        }
        .padding()
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(value: .constant(128), color: .red)
    }
}
