//
//  DetailModel.swift
//  live_swiftUI_numero1
//
//  Created by Dylan Caetano on 30/03/2022.
//

import Foundation

struct DetailModel: Identifiable {
    let id = UUID()
    let burgerImg: String
    let title: String
    let headline: String
    let description: String
}
