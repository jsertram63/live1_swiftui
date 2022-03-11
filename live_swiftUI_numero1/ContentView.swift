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
        VStack(spacing: 25.0) {
            // Principe du State
            VStack {
                Text("Changement d'état avec @State")
                    .foregroundColor(textColor)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                HStack(alignment: .center) {
                    Spacer()
                    
                    Button {
                        self.imageFill.toggle()
                    } label: {
                        Text("Changer d'image")
                            .padding(10.0)
                    }
                    .foregroundColor(Color.white)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                    Spacer()
                    
                    Image(systemName: imageFill ? "sun.haze" : "sun.max.fill")
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                        .foregroundColor(imageFill ? .orange : .yellow)
                    
                    Spacer()
                }
            }
            .padding(20.0)
            
            Divider()
            // Pricipe du binding
            VStack {
                Text("Changement de couleur avec le @Binding")
                    .foregroundColor(textColor)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                HStack {
                    SousVue(viewColor: .red, selectedColor: $textColor)
                    SousVue(viewColor: .blue, selectedColor: $textColor)
                    SousVue(viewColor: .yellow, selectedColor: $textColor)
                    SousVue(viewColor: .green, selectedColor: $textColor)
                }
            }
            .padding(20.0)
        }
    }
}

// Vue additionnelle
/*
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
*/

// Structure d'affichage pour la preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
