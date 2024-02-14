//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 11/02/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // MARK: - Rating
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            print("star clicked")
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .foregroundStyle(.white)
                        }// - Button
                    }// - Loop
                })//- HSTACK
            })// VSTACK
            
            Spacer()
            // MARK: - Sizes
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            print("\(size) clicked")
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray ,lineWidth: 2)
                                )
                        }// - Button
                    }// - Loop
                })
            })// - VSTACK
        })// - HSTACK
    }
}

#Preview {
    RatingsSizesDetailView()
        .padding()
}
