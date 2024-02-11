//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 11/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    let product: ProductModel
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // MARK: - NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top,
                             geometry.safeAreaInsets.top
                    )
                // MARK: - HEADER
                HeaderDetailView(product: product)
                    .padding(.horizontal)
                
                // MARK: - DETAIL TOP PART
                TopBarDetailView(product: product)
                    .padding(.horizontal)
                    .zIndex(1)
                
                // MARK: - DETAIL BOTTOM PART
                VStack(alignment: .center, spacing: 0, content: {
                    // MARK: - RATINGS + SIZES
                    // MARK: - DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(product.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                    }//: SCROLL
                    // MARK: - QUANTITY + FAVOURITE
                    // MARK: - ADD TO CART
                    Spacer()
                })//: VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
            }) // VSTACK
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                product.rgbColor
                    .ignoresSafeArea(.all, edges: .all)
            )
        }
    }// GEOMETRY READER
}

#Preview {
    ProductDetailView(product: products[0])
}
