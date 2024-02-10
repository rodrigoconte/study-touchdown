//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 09/02/24.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    let brands: [BrandModel]
    
    // MARK: - BAODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: collumnSpacing) {
                Section(content: {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }// - LOOP
                })

            }// - Grid
            .frame(height: 220)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }// - Scroll
    }
}

#Preview {
    BrandGridView(brands: brands)
}
