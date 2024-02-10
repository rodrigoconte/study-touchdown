//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 09/02/24.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand: BrandModel
    
    // MARK: - BODY
    var body: some View {
        Button {
            print("clicked")
        } label: {
            Image(brand.image)
                .resizable()
                .scaledToFit()
        }
        .frame(width: 75, height: 75)
        .padding()
        .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
        )

    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
