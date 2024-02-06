//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 05/02/24.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button {
                print("bla")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0: -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            Button {
                print("bla")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundStyle(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }// - ZSTACK
            }// - BUTTON
        }// - HSTACK
    }// - BODY
}

#Preview {
    NavigationBarView()
        .padding()
}
