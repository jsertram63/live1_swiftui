//
//  ListeView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import SwiftUI

struct ListeView: View {
    
    // déclaration de notre propriété de manière explicite qui est un tableau du model MenuItem
    var menus: [MenuItem]
    
    var body: some View {
        NavigationView {
            // Vue container en couche supperposées
            ZStack {
                // Définition de la couleur d'arrière plan et on ignore la zone de sécurité d'affichage
                Color("Color2").ignoresSafeArea()
                // Vue container verticale
                VStack {
                    Divider().background(Color("Color2"))
                    // Vue liste
                    List {
                        ForEach(menus) { itemMenu in
                            // Liens d'affichage vers d'autres vues
                            NavigationLink(destination: {
                                MenuView(menu: itemMenu)
                            }, label: {
                                HStack(alignment: .center) {
                                    Image(itemMenu.imageMenus)
                                        .resizable()
                                        .frame(width: 25.0, height: 25.0)
                                    Text(itemMenu.menuTitle)
                                }
                            })
                            // Titre de la NavigationView
                            .navigationTitle("Menus")
                            // Permet de changer le style de la NavigationView (.automatic, .large
                            .navigationBarTitleDisplayMode(.inline)
                        }
                        // Permet de changer les couleurs d'arrière plan de la liste et du texte
                        .foregroundColor(Color.accentColor)
                        .listRowBackground(Color("Color1").opacity(0.8))
                    }
                    // Permet de changer le style de liste (.automatic, .grouped, .inset, .insetGrouped, .plain
                    .listStyle(.sidebar)
                }
            }
        }
    }
}

struct ListeView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView(menus: MenuItem.menus)
    }
}

