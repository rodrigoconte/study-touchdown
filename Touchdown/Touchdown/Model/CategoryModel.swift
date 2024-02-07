//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 06/02/24.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
