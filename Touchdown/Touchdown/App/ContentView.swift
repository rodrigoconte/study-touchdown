//
//  ContentView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            if !shop.showingProduct && shop.selectedProduct == nil {
                ZStack {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, geometry.safeAreaInsets.top)
                            .background(.white)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5 , x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 0) {
                                // MARK: - CARROUSEL SECTION
                                ImageSliderView(players: players)
                                    .padding(.vertical, 10)
                                
                                // MARK: - CATEGORY SECTION
                                CategoryGridView(categories: categories)
                                
                                // MARK: - HELMETS SECTION
                                TitleView(title: "Helmets")
                                ProductGridView(products: products)
                                    .padding()
                                
                                // MARK: - BRANDS SECTION
                                TitleView(title: "Brands")
                                BrandGridView(brands: brands)
                                
                                // MARK: - FOOTER
                                FooterView()
                                    .padding()
                            }// - VStack
                        }// - Scrool
                    }// - VSTACK
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                }// - ZSTACK
                .ignoresSafeArea()
            } else {
                if let product = shop.selectedProduct {
                    ProductDetailView(product: product)
                } else {
                    EmptyView()
                }
            }
        }// - GeometryReader
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
