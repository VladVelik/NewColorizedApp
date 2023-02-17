//
//  TextFieldView.swift
//  NewColorizedApp
//
//  Created by Sosin Vladislav on 17.02.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    @Binding var value: Double
    
    @State var isAlertShown = false
    
    var body: some View {
        TextField("", text: $text) {
            withAnimation {
                numberChecking()
            }
        }
        .frame(width: 50)
        .textFieldStyle(.roundedBorder)
        .multilineTextAlignment(.trailing)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $isAlertShown) {
            Text("Enter value from 0 to 255!")
        }
    }
}

extension TextFieldView {
    private func numberChecking() {
        if let value = Int(text), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        isAlertShown.toggle()
        value = 0
        text = "0"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("128"), value: .constant(128))
    }
}
