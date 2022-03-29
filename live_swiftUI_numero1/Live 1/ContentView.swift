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
        UITabBar.appearance().backgroundColor = .systemGray4
    }
    
    var body: some View {
        TabView {
            StatesAndBinding()
                .tabItem {
                    Image(systemName: "link")
                    Text("Live 1-2")
                }
            PierricView()
                .tabItem {
                    Image(systemName: "eyedropper.full")
                    Text("Pierric")
                }
            DylanView()
                .tabItem {
                    Image(systemName: "drop.fill")
                    Text("Dylan")
                }
            ListeView(menus: MenuItem.menus)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Liste")
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
