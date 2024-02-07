//
//  ProductModel.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import Foundation

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
}
