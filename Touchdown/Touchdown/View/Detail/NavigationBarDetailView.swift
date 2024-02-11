//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 11/02/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                print("Clicked back")
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                
            }// BUTTON
            
            Spacer()

            Button {
                print("Clicked add to cart")
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            }

        }// HSTACK
    }
}

#Preview {
    NavigationBarDetailView()
        .padding()
        .background(.gray)
}
