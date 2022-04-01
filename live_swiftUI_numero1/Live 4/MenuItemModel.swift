//
//  MenuItemModel.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import Foundation

// déclaration d'une structure

struct MenusList: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let headline: String
    let description: String
}

extension MenusList {
    static let menus: [MenusList] = [
        MenusList(
            image: "BicMac",
            title: "Le Bic Mac",
            headline: "L’unique, l’indémodable Big Mac™ de McDonald’s",
            description: "Le Big Mac™ est LE burger culte de McDonald’s, disponible dans de nombreux pays du monde ! Il a traversé les années et reste un indétrônable des burgers McDo. Le secret de ce burger ? La simplicité de ses ingrédients, ses deux étages de saveurs, et bien entendu une sauce reconnaissable entre mille !"
        ),
        
        MenusList(
            image: "LaDoubleCheeseBurger",
            title:  "La Double Cheese Burger",
            headline: "Double Cheese, double plaisir !",
            description: "Un goût culte : 2 steaks hachés cuits au grill, 2 tranches de cheddar fondu, 2 sauces ketchup et moutarde… 2 fois plus de plaisir !"
        ),
        
        MenusList(
            image: "LeBeefBBQ-1viande",
            title:  "Le Beef BBQ - 1 viande",
            headline: "Une recette unique",
            description: "Découvrez la recette de ce burger Signature By McDonald's™ : du Cheddar affiné 6 mois, des oignons rouges, un steak 100% viande Charolaise Française, de la sauce BBQ et un pain Signature préparé avec de la farine de blé Label Rouge."
        ),
        
        MenusList(
            image: "LeBeefBBQ-2viandes",
            title: "Le Beef BBQ - 2 viandes",
            headline: "Une recette unique",
            description: "Découvrez la recette de ce burger Signature By McDonald's™ : du Cheddar affiné 6 mois, des oignons rouges, deux steaks 100% viande Charolaise Française, de la sauce BBQ et un pain Signature préparé avec de la farine de blé Label Rouge."
        ),
        
        MenusList(
            image: "LeCheeseburger",
            title: "Le Cheeseburger",
            headline: "Le « Cheese » pour les intimes",
            description: "Un steak haché, une tranche de cheddar fondu, une rondelle de cornichon, des oignons, du ketchup et de la moutarde douce dans un pain classique : fondez pour son goût unique et emblématique."
        ),
        
        MenusList(
            image: "LeHamburger",
            title: "Le Hamburger",
            headline: "Un indémodable, tout simplement",
            description: "Un steak haché, une rondelle de cornichon, des oignons, de la moutarde douce et du ketchup, retrouvez tout l'esprit de McDonald's dans ce classique au goût inimitable."
        ),
        
        MenusList(
            image: "LeMcFirstBoeuf",
            title: "Le Mc First Boeuf",
            headline: "Une recette unique",
            description: "Régalez-vous du McFirst™ Bœuf et de sa recette si unique. Ses deux steaks 100% pur bœuf*relevé par le mélange de la sauce ketchup et de la sauce ranch vous feront adorer ce burger, seul ou au sein d’un Menu McFirst™. McDonald’s apporte beaucoup de soin à la sélection de ses ingrédients. Venez goûter le résultat dans le burger McFirst™ Bœuf !"
        )
    ]
}
