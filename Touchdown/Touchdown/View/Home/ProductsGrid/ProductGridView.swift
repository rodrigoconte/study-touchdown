//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 07/02/24.
//

import SwiftUI

struct ProductGridView: View {
    // MARK: - PROPERTIES
    let products: [ProductModel]
    
    // MARK: - BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product)
            }
        }
    }
}

#Preview {
    ProductGridView(products: products)
}
