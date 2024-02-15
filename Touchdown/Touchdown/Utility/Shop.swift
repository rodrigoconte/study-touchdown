//
//  Shop.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 14/02/24.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
