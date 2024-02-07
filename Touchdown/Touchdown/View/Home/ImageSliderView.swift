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
        ForEach(players) { player in
            
        }
    }
}

#Preview {
    @State var players: [PlayerModel] = Bundle.main.decode([PlayerModel].self, from: "player.json")
    return ImageSliderView(players: players)
}
