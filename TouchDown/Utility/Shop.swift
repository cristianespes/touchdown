//
//  Shop.swift
//  TouchDown
//
//  Created by Cristian Espes on 29/01/2021.
//

import Foundation

final class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
}
