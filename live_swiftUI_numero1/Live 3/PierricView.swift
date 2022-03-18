//
//  PierricView.swift
//  live_swiftUI_numero1
//
//  Created by Pierric Marye on 18/03/2022.
//

import SwiftUI

struct PierricView: View {
    
    // propriété simple sans expansion dans l'application
    var colorSwift = Color("Color3")
    
    /* définition de propriétés "property wrapper" d'états pour les vues Picker et Slider */
    // Arrière plan
    @State var CouleurArrierePlan = Color.accentColor
    // Opacité
    @State var selectedOpacity: Double = 1.0
    
    var body: some View {
        ZStack {
            CouleurArrierePlan.opacity(selectedOpacity).ignoresSafeArea()
            VStack(spacing: 100.0) {
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200.0, height: 200.0)
                    .foregroundColor(colorSwift)
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
                
                Spacer()
                
                VStack(spacing: 25.0) {
                    
                    Spacer()
                    // Vue ColorPicker possédant des paramètres: texte à afficher et Binding
                    ColorPicker("Choisir une couleur de fond:", selection: $CouleurArrierePlan)
                    
                    // Vue ColorPicker possédant des paramètres: Binding et le range (étalonnage)
                    Slider(value: $selectedOpacity, in: 0...1)
                    // affichage de la valeur en % grâce au casting. Pas besoin de $ car sera uniquement pour cette vue
                    Text("Opacité: \((selectedOpacity * 100), specifier: "%.f") %")
                        .font(.title3)
                        .fontWeight(.medium)
                }
                .padding()
                .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: 250.0)
                .background(.ultraThinMaterial)
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.5), radius: 15, x: 0, y: 0)
                .overlay(alignment: .topLeading) {
                    Button {
                        CouleurArrierePlan = Color.accentColor
                        selectedOpacity = 1.0
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .frame(width: 15.0, height: 15.0)
                            .font(.headline)
                            .padding(12.0)
                            .foregroundColor(.primary)
                            .background(.thickMaterial)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                    }
                    .padding(10.0)
                }
            }
            .padding()
        }
    }
}

struct PierricView_Previews: PreviewProvider {
    static var previews: some View {
        PierricView()
    }
}
