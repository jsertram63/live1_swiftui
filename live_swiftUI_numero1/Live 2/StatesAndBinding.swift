//
//  StatesAndBinding.swift
//  live_swiftUI_numero1
//
//  Created by Pierric Marye on 18/03/2022.
//

import SwiftUI

struct StatesAndBinding: View {
    
    // VAR = LECTURE SIMPLE
    var text = "Je suis une propriété à portée locale dans cette view StantesAndBinding"
    // State = LECTURE / ECRITURE
    @State var imageFill = true;
    @State var textColor = Color.black
    
    var body: some View {
        ZStack {
            Color.accentColor.ignoresSafeArea()
            
            VStack(spacing: 25.0) {
                VStack(spacing: 25.0) {
                    Text("Gestion des états et le passage de données")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(text)
                }
                
                Spacer()
                
                Divider()
                    .background(.black)
                
                Spacer()
                
                // Principe du State
                VStack(spacing: 25.0) {
                    Text("Changement d'état avec @State")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    // vue container qui permet d'aligner horizontalement des containers
                    HStack(alignment: .center) {
                        // Spacer container qui va permettre d'occuper l'espace libre (homogénisation de l'espace)
                        Spacer()
                        
                        Button {
                            imageFill.toggle()
                        } label: {
                            Text("Changer d'image")
                                .padding(10.0)
                        }
                        .foregroundColor(Color.white)
                        .background(Color("Color1"))
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
                
                Spacer()
                
                Divider()
                    .background(.black)
                
                Spacer()
                // Pricipe du Binding
                // Vstack (vue container pour empiler les éléments les uns en dessous des autres)
                VStack(spacing: 25.0) {
                    Text("Changement de couleur avec le @Binding")
                        // .modifier instance qui permette de modifier de styliser le text
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("Cliquez sur les pastilles pour me voir changer de couleur")
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                    
                    HStack {
                        // liaison avec le boutton choix de couleur
                        // la liason est symbolisé le $
                        Spacer()
                        SousVue(viewColor: .red, selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: Color("Color2"), selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: Color("Color1"), selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: .green, selectedColor: $textColor)
                        Spacer()
                    }
                }
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
        
    }
}

struct StatesAndBinding_Previews: PreviewProvider {
    static var previews: some View {
        StatesAndBinding()
    }
}
