//
//  ColorView.swift
//  ColorSliderSwiftUI
//
//  Created by Дмитрий Смирнов on 5.04.22.
//

import SwiftUI

struct ColorView: View {

    let red: Double
    let green: Double
    let blue: Double

    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(30)
            .frame(width: 380, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 50, green: 150, blue: 150)
    }
}
