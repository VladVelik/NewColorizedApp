//
//  ColorizedView.swift
//  NewColorizedApp
//
//  Created by Sosin Vladislav on 17.02.2023.
//

import SwiftUI

struct ColorizedView: View {
    let red, green, blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(30)
            .frame(height: 150)
            .overlay {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.white, lineWidth: 5)
            }
            .padding()
    }
}

struct ColorizedView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView(red: 128, green: 128, blue: 128)
    }
}
