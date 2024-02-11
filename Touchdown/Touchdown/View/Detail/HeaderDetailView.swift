//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 11/02/24.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    let product: ProductModel
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }// Vstack
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView(product: products[2])
        .background(.gray)
}
