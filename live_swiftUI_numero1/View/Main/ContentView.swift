//
//  ContentView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .lightGray
    }
    var body: some View {
       
        TabView {
            StatesAndBindingView()
                .tabItem {
                    Image(systemName: "link")
                    Text("Live 1")
                }
        }
    }
}

// Structure d'affichage pour la preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
