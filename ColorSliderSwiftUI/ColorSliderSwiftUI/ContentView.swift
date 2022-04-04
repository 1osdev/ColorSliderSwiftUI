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
    
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                ColorView(red: red, green: green, blue: blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
