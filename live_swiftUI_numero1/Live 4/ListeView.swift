//
//  ListeView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import SwiftUI

struct ListeView: View {
    
    // déclaration de notre tableau de manière implicite (swift déduit que c'est un tableau de String)
    //var listTextMenu = //["Menu","Hamburger","Sauces","Dessert","Boissons","Suppléments"]
    
    let menus : [MenuItem] = [
        MenuItem(menuTitle: "Menu"),
        MenuItem(menuTitle: "Hamburger"),
        MenuItem(menuTitle: "Sauces"),
        MenuItem(menuTitle: "Desserts"),
        MenuItem(menuTitle: "Boissons"),
        MenuItem(menuTitle: "Suppléments")
    ]

    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menus) { itemMenu in
                    NavigationLink(destination: {
                        // code
                    }, label: {
                        Text(itemMenu.menuTitle)
                    })
                        .navigationTitle("Menu")
                }
                    
                }
                
            }
            
        }
}
        
       // struct ListeView_Previews: PreviewProvider {
       //     static var previews: some View {
       //         ListeView(modelMenu:)
       //     }
       // }
        
