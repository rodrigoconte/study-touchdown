//
//  ImageSliderItemView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import SwiftUI

struct ImageSliderItemView: View {
    // MARK: - PROPERTIES
    let player: PlayerModel
    
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 13))
    }
}

#Preview {
    ImageSliderItemView(player: players[0])
}
