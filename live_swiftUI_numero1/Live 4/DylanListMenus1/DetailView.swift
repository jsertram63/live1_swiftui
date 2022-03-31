//
//  DetailView.swift
//  live_swiftUI_numero1
//
//  Created by Dylan Caetano on 31/03/2022.
//

import SwiftUI

struct DetailView: View {
    
    let menu: MenusList
    
    var body: some View {
        ZStack {
            Color("Color1")
                .ignoresSafeArea()
            VStack(spacing: 7) {
                Image(menu.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                Text(menu.title)
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .fontWeight(.semibold)
                Text(menu.headline)
                    .font(.caption)
                    .foregroundColor(Color.accentColor)
                VStack {
                    Text(menu.description)
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                } // VSTACK
                .padding(5)
            } // VSTACK
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(menu: MenusList.menus.first!)
    }
}
