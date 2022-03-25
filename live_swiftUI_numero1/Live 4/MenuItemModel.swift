//
//  MenuItemModel.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import Foundation

// déclaration d'une structure

struct MenuItem: Identifiable {
    let menuTitle:String
    let id = UUID()
}


extension MenuItem {
    //  ["Menu","Hamburger","Sauces","Dessert","Boissons","Suppléments"]
    static let menus : [MenuItem] = [
        MenuItem(menuTitle: "Menu"),
        MenuItem(menuTitle: "Hamburger"),
        MenuItem(menuTitle: "Sauces"),
        MenuItem(menuTitle: "Desserts"),
        MenuItem(menuTitle: "Boissons"),
        MenuItem(menuTitle: "Suppléments")
    ]
    
}
