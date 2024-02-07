//
//  SectionView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    let title: String
    @State var rotationClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0, content: {
            Spacer()
            
            Text(title.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(.degrees(rotationClockwise ? 90 : -90))
            
            Spacer()
        })// - HSTACK
        .background(colorGray)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(title: "Categories", rotationClockwise: false)
}
