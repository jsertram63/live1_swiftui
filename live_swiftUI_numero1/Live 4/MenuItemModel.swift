//
//  MenuItemModel.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import Foundation

// déclaration d'une structure

struct MenuItem: Identifiable {
    let id = UUID()
    let menuTitle: String
    let imageMenus: String
}

extension MenuItem {
    
    static let menus : [MenuItem] = [
        MenuItem(menuTitle: "Apperitif", imageMenus: "appetizer"),
        MenuItem(menuTitle: "Entrée", imageMenus: "starter"),
        MenuItem(menuTitle: "Plats", imageMenus: "main"),
        MenuItem(menuTitle: "Desserts", imageMenus: "dessert")
    ]
}
