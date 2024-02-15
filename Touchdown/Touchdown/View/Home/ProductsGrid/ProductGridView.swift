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
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            shop.showingProduct = true
                            shop.selectedProduct = product
                        }
                    }
            }
        }
    }
}

#Preview {
    ProductGridView(products: products)
}
