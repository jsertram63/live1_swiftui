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
    
    // initialisation du constructeur
    init() {
        // stylisation de la tabbar
        UITabBar.appearance().backgroundColor = .systemGray6
    }
    
    var body: some View {
        TabView {
            StatesAndBinding()
                .tabItem {
                    Image(systemName: "link")
                    Text("Live 1-2")
                }
            live3View()
                .tabItem {
                    Text("Pierric")
                }
            DylanView()
                .tabItem {
                    Text("Dylan")
                }
        }
    }
}

// Structure d'affichage pour la preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
