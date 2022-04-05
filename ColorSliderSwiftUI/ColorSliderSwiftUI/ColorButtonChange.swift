//
//  ColorButtonChange.swift
//  ColorSliderSwiftUI
//
//  Created by Дмитрий Смирнов on 5.04.22.
//

import SwiftUI

struct ColorButtonChange: View {

    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(Color.white)
        }
            .padding()
            .frame(width: 250, height: 80)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct ColorButtonChange_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonChange(title: "Change Color", action: {})
    }
}
