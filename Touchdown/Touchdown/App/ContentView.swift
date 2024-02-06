//
//  ContentView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, geometry.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5 , x: 0, y: 5)
                    
                    Spacer()
                    
                    FooterView()
                        .padding()
                }// - VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }// - ZSTACK
            .ignoresSafeArea()
        }// - GeometryReader
    }
}

#Preview {
    ContentView()
}
