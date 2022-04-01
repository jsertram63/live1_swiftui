//
//  ListeView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 25/03/2022.
//

import SwiftUI

struct ListeView: View {
    
    let menus: [MenusList]
    
    var body: some View {
            ZStack(alignment: .top) {
                NavigationView {
                    ScrollView {
                        // Une cellule des Burger / Detail
                            ForEach(menus) { list in
                                NavigationLink(destination: {
                                   DetailView(menu: list)
                                }, label: {
                                    HStack(spacing: 16) {
                                        Image(list.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 90, height: 95)
                                            .background(Color.black)
                                            .cornerRadius(22)
                                        VStack(alignment: .leading, spacing: 8.0) {
                                            VStack(alignment: .leading, spacing: 7) {
                                                Text(list.title)
                                                    .font(.title2)
                                                    .foregroundColor(Color.black)
                                                    .fontWeight(.semibold)
                                                    .lineLimit(1)
                                                Text(list.headline)
                                                    .font(.caption)
                                                    .foregroundColor(Color.yellow)
                                                    .lineLimit(1)
                                            } // VSTACK
                                            Text(list.description)
                                                .font(.callout)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                        } // VSTACK
                                        Spacer()
                                    } // HSTACK
                                    .padding(8)
                                }) // LABEL
                            }
                    } // SCROLLVIEW
                    .background(Color.accentColor)
                    .navigationTitle("My Menus")
                } // NAVIGATIONVIEW
        } // ZSTACK
    }
}

struct ListeView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView(menus: MenusList.menus)
    }
}
