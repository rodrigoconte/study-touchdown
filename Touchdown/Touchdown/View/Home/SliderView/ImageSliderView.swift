//
//  ImageSliderView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import SwiftUI

struct ImageSliderView: View {
    // MARK: - PROPERTIES
    let players: [PlayerModel]
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                ImageSliderItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(minHeight: 256)
        
    }
}

#Preview {
    ImageSliderView(players: players)
        .background(.gray)
}
