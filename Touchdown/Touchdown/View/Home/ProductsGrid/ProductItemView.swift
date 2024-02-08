//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 07/02/24.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: ProductModel
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }// - ZSTACK
            .background(product.rgbColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            Text(product.formattedPrice)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        })// - VSTACK
        
    }
}

#Preview {
    ProductItemView(product: products[1])
        .padding()
}
