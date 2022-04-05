//
//  TextView.swift
//  ColorSliderSwiftUI
//
//  Created by Дмитрий Смирнов on 5.04.22.
//

import SwiftUI

struct TextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 50, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextView(value: 100)
        }
    }
}
