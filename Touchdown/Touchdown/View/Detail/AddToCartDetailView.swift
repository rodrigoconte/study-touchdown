//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 14/02/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    let product: ProductModel
    
    // MARK: - Body
    var body: some View {
        Button {
            print("add to cart pressed")
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        } // - Button
        .padding(15)
        .background(product.rgbColor)
        .clipShape(Capsule())

    }
}

#Preview {
    AddToCartDetailView(product: products[1])
}
