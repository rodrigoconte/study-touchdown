//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    let categories: [CategoryModel]
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: collumnSpacing) {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }// - LOOP
                }) {
                    SectionView(title: "Categories", rotationClockwise: false)
                } footer: {
                    SectionView(title: "Categories", rotationClockwise: true)
                }// - SECTION

            }// - Grid
            .frame(height: 160)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }// - Scroll
        
    }
}

#Preview {
    CategoryGridView(categories: categories)
}
