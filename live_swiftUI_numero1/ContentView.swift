//
//  ContentView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    // VAR = LECTURE SIMPLE
    var text = "Je suis une property. On peut uniquement me lire mais pas me modifier"
    // State = LECTURE / ECRITURE
    @State var textMutable = "Je suis un texte mutable"
    @State var imageFill = true;
    @State var textColor = Color.black
    
    // le binding
    //@Binding
    
    var body: some View {
        VStack{
            Text("Changement de couleur avec le @Binding")
                .foregroundColor(textColor)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        HStack {
            SousVue(viewColor: .red, selectedColor: $textColor)
            SousVue(viewColor: .blue, selectedColor: $textColor)
            SousVue(viewColor: .yellow, selectedColor: $textColor)
            SousVue(viewColor: .green, selectedColor: $textColor)
            
        }
            
    }
}

struct SousVue: View {
    var viewColor:Color
    @Binding var selectedColor:Color
    var body : some View {
        Button(action: {
            self.selectedColor = viewColor
        }) {
            viewColor.frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
