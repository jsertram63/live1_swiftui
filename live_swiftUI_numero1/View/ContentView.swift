//
//  ContentView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    // VAR = LECTURE SIMPLE
    var text = "Je suis une property simple. On peut uniquement me lire mais pas me modifier dans d'autres vues"
    // @State = LECTURE / ECRITURE pouvant s'étendre au travers des view
    @State var imageFill = true;
    @State var textColor = Color.black
    
    // le binding
    //@Binding
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 25.0) {
                Text("La gestion des états et le passage de données")
                    .font(.title)
                    .fontWeight(.bold)
                // Variable utilisable uniquement dans la view
                Text(text)
                
                Divider()
                
                // Principe du State
                VStack(spacing: 25.0) {
                    Text("Changement d'état avec @State")
                        .font(.title2)
                    
                    
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
                        
                        Image(systemName: imageFill ? "sun.haze.fill" : "sun.max.fill")
                            .resizable()
                            .frame(width: 75.0, height: 75.0)
                            .foregroundColor(imageFill ? .orange : .yellow)
                        
                        Spacer()
                    }
                }
                
                Divider()
                
                // Pricipe du binding
                VStack(spacing: 25.0) {
                    Text("Changement de couleur avec le @Binding")
                        .foregroundColor(textColor)
                        .font(.title2)
                    
                    HStack {
                        Spacer()
                        SousVue(viewColor: .red, selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: .blue, selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: .yellow, selectedColor: $textColor)
                        Spacer()
                        SousVue(viewColor: .green, selectedColor: $textColor)
                        Spacer()
                    }
                }
            }
            .multilineTextAlignment(.center)
        }
        .padding()
    }
}

// Structure d'affichage pour la preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
