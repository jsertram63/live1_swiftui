//
//  StateBinding.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 18/03/2022.
//

import SwiftUI

struct StateBinding: View {
    
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
                
                // vue container qui permet d'aligner horizontalement des containers
                HStack(alignment: .center) {
                    // Spacer container qui va permettre d'occuper l'espace libre (homogénisation de l'espace)
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
                    
                    //  container Image affiche une image
                    // sun.haze ou sun.max.fill : sfsymbol (fourni appel pour travailer)
                    Image(systemName: imageFill ? "sun.haze" : "sun.max.fill")
                        .resizable()
                        // .frame permet de spécifier la taille de l'image.
                        .frame(width: 75.0, height: 75.0)
                        .foregroundColor(imageFill ? .orange : .yellow)
                    
                    Spacer()
                }
            }
            .padding(20.0)
            
            Divider()
            // Pricipe du binding
            // Vstack (vue container pour empiler les éléments les uns en dessous des autres)
            VStack {
                Text("Changement de couleur avec le @Binding")
                    // .modifier instance qui permette de modifier de styliser le text
                    .foregroundColor(textColor)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                HStack {
                    // liaison avec le boutton choix de couleur
                    // la liason est symbolisé le $
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

// Structure d'affichage pour la preview
struct StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
