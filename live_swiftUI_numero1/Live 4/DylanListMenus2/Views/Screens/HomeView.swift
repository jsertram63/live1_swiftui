//
//  HomeView.swift
//  live_swiftUI_numero1
//
//  Created by Dylan Caetano on 31/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    let listRepository = BurgerRepository()
    @State var menus = [DetailModel]()
    
    init() {
        let apparence = UINavigationBarAppearance()
        apparence.configureWithTransparentBackground()
        apparence.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        apparence.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        UINavigationBar.appearance().scrollEdgeAppearance = apparence
        UINavigationBar.appearance().standardAppearance = apparence
        
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            NavigationView {
                ScrollView {
                    // Une cellule des Burger / Detail
                    ForEach(menus) { list in
                        let viewModel = ListMenuViewModel(
                            image: list.burgerImg,
                            title: list.title,
                            headline: list.headline,
                            description: list.description
                        )
                        ListMenuView(viewModel: viewModel)
                    }
                } // SCROLLVIEW
                .navigationTitle("My Menus")
                .background(Color.accentColor.ignoresSafeArea())
            } // NAVIGATIONVIEW
            .onAppear(perform: {
                menus = listRepository.getBurger()
        })
        } // ZSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
