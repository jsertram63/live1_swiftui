//
//  DetailBurgerView.swift
//  live_swiftUI_numero1
//
//  Created by Dylan Caetano on 26/03/2022.
//

import SwiftUI

struct DetailBurgerView: View {
    
    let viewModel: DetailBurgerViewModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(viewModel.burgerImg)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 6.0) {
                        Text(viewModel.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(viewModel.headline)
                            .foregroundColor(Color.accentColor.opacity(0.6))
                            .font(.footnote)
                    } // VSTACK
                    Spacer()
                } // HSTACK
                .padding()
                .padding(.top, 40)
                .background(
                  LinearGradient(gradient:
                                    Gradient(colors: [.clear, .yellow]),
                                 startPoint: .top,
                                 endPoint: .bottom
                    )
                )
                Spacer()
            } // ZSTACK
            .background(.yellow)
        } // VSTACK
    }
}

struct DetailBurgerView_Previews: PreviewProvider {
    
    static let viewModel = DetailBurgerViewModel(
                         burgerImg: "BicMac",
                         title: "Big Mac",
                         headline: "L’unique, l’indémodable Big Mac™ de McDonald’s",
                         description: "e Big Mac™ est le burger culte de McDonald’s, disponible dans de nombreux pays du monde ! Il a traversé les années et reste un indétrônable des burgers McDo. Le secret de ce burger ? La simplicité de ses ingrédients, ses deux étages de saveurs, et bien entendu une sauce reconnaissable entre mille !"
    )
    
    static var previews: some View {
        DetailBurgerView(viewModel: viewModel)
           .previewLayout(.sizeThatFits)
    }
}
