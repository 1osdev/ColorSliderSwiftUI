//
//  ColorSlider.swift
//  ColorSliderSwiftUI
//
//  Created by Дмитрий Смирнов on 5.04.22.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    @State private var text = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            TextView(value: value)
        
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: value) { newValue in
                    text = "\(lround(newValue))"
        }
//            TextField(text: $text, value: $value)
//                .onAppear {
//                    text = "\(lround(value))"
//                }
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.lightGray)
            ColorSlider(value: .constant(10), color: .red)
        }
    }
}
