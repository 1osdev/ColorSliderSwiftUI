//
//  ContentView.swift
//  ColorSliderSwiftUI
//
//  Created by Дмитрий Смирнов on 4.04.22.
//

import SwiftUI

struct ContentView: View {

    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    @State private var buttonTapped = "Change Color"


    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                ColorView(red: red, green: green, blue: blue)
                    .padding()
                ColorView(red: red, green: green, blue: blue)
                    .padding()
                VStack {
                    ColorSlider(value: $red, color: .red)
                    ColorSlider(value: $green, color: .green)
                    ColorSlider(value: $blue, color: .blue)
                }
                    .frame(width: 380, height: 250)
                Spacer()
                ColorButtonChange(title: buttonTapped, action:{})
            }
//           ColorButtonChange(title: buttonTapped, action: changeColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
