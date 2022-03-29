//
//  MenuView.swift
//  live_swiftUI_numero1
//
//  Created by Pierric Marye on 29/03/2022.
//

import SwiftUI

struct MenuView: View {
    // Création d'une propriété de type MenuModel
    var menu: MenuItem
    
    var body: some View {
        ZStack {
            Color("Color1").ignoresSafeArea()
            
            VStack {
                Divider().background(Color("Color2"))
                
                Spacer()
                
                VStack(alignment: .center, spacing: 25.0) {
                    // on fait appel à la proprété et on récupère l'instance souhaitée
                    Image(menu.imageMenu)
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 10)
                    
                    Text(menu.descriptionMenu)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(Color("Color3"))
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        // passage en paramètres du premier constructeur pour la preview
        MenuView(menu: MenuItem.menus.first!)
    }
}
