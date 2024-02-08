//
//  TitleView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 07/02/24.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    let title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }// - HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .background(.colorBackground)
}
