//
//  ProductModel.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import Foundation
import SwiftUI

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var rgbColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
