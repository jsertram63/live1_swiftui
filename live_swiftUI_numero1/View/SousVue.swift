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
                self.selectedColor = viewColor
            }) {
                viewColor.frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
            }
            .shadow(radius: 5)
    }
}

struct SousVue_Previews: PreviewProvider {
    @State static var viewColor: Color =  Color.red
    @State static var selectedColor: Color = viewColor
    
    static var previews: some View {
        SousVue(viewColor: Color.red, selectedColor: $selectedColor)
    }
}
