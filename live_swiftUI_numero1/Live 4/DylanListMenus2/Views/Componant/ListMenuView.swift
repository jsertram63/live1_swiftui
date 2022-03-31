//
//  ListMenuView.swift
//  live_swiftUI_numero1
//
//  Created by Dylan Caetano on 25/03/2022.
//

import SwiftUI

struct ListMenuView: View {
    
    var colorBurger = Color("Color1")
    
    let viewModel: ListMenuViewModel
    
    var body: some View {
        //Spacing espace entre l'image et les texts, HStack = Horizontal
            HStack(spacing: 16) {
                Image(viewModel.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 105, height: 110)
                    .background(Color.black)
                    .cornerRadius(22)
                VStack(alignment: .leading, spacing: 8.0) {
                    VStack(alignment: .leading, spacing: 0.8) {
                        Text(viewModel.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        Text(viewModel.headline)
                            .foregroundColor(colorBurger)
                            .font(.caption)
                            .lineLimit(1)
                    } // VSTACK
                    Text(viewModel.description)
                        .font(.callout)
                        .fontWeight(.light)
                        .frame(width: .infinity, height: .infinity)
                        .lineLimit(2)
                } // VSTACK
                Spacer()
            } // HSTACK
            .padding(8)
    }
}

struct ListMenuView_Previews: PreviewProvider {
    
    static let viewModel = ListMenuViewModel(
        image: "BicMac",
        title: "Bic Mac",
        headline: "L’unique, l’indémodable Big Mac™ de McDonald’s",
        description: "Le Big Mac™ est le burger culte de McDonald’s, disponible dans de nombreux pays du monde ! Il a traversé les années et reste un indétrônable des burgers McDo. Le secret de ce burger ? La simplicité de ses ingrédients, ses deux étages de saveurs, et bien entendu une sauce reconnaissable entre mille !"
    )
    
    static var previews: some View {
        ListMenuView(viewModel: viewModel)
        .previewLayout(.sizeThatFits)
        .background(Color.accentColor)
        .preferredColorScheme(.light)
    }
}
