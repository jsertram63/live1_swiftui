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
        

    }
}
/*
struct SousVue_Previews: PreviewProvider {
    static var previews: some View {
        SousVue(viewColor: Color.red, selectedColor: $se)
    }
}*/



