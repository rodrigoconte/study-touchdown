//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: CategoryModel
    
    // MARK: - BODY
    var body: some View {
        Button {
            print("clicked")
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }// - HSTACK
            .frame(width: 160, height: 43)
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }

    }
}

#Preview {
    CategoryItemView(category: categories[10])
        .padding(.horizontal, 20)
}
