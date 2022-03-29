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
    let imageMenu: String
    let descriptionMenu: String
}

extension MenuItem {
    
    static let menus : [MenuItem] = [
        MenuItem(menuTitle: "Apperitif", imageMenus: "appetizer", imageMenu: "cocktail", descriptionMenu: "Margarita"),
        MenuItem(menuTitle: "Entrée", imageMenus: "starter", imageMenu: "coldStarter", descriptionMenu: "Salade composée"),
        MenuItem(menuTitle: "Plats", imageMenus: "main", imageMenu: "main2", descriptionMenu: "Polochon de viandes"),
        MenuItem(menuTitle: "Desserts", imageMenus: "dessert", imageMenu: "dessert2", descriptionMenu: "Tiramisu")
    ]
}
