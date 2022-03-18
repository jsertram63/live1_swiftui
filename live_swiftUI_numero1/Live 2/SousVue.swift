//
//  SousVue.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 11/03/2022.
//

import SwiftUI

struct SousVue: View {
    
    var viewColor : Color
    @Binding var selectedColor:Color
    
    var body: some View {
            
            Button(action: {
                selectedColor = viewColor
            }) {
                viewColor.frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
            }
            .padding(5.0)
            .background(.ultraThinMaterial)
            .clipShape(Circle())
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 0)
    }
}

struct SousVue_Previews: PreviewProvider {
 
 @State static var viewColor: Color = .red
 @State static var selectedColor: Color = viewColor
 
    static var previews: some View {
        SousVue(viewColor: viewColor, selectedColor: $selectedColor)
    }
}



