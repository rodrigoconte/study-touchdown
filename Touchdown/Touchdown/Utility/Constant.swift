//
//  Constant.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 02/02/24.
//

import SwiftUI

// MARK: - DATA
let players: [PlayerModel] = Bundle.main.decode([PlayerModel].self, from: "player.json")
let categories: [CategoryModel] = Bundle.main.decode([CategoryModel].self, from: "category.json")
let brands: [BrandModel] = Bundle.main.decode([BrandModel].self, from: "brand.json")
let products: [ProductModel] = Bundle.main.decode([ProductModel].self, from: "product.json")


// MARK: - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - LAYOUT
let collumnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: - UX
// MARK: - API
// MARK: - IMAGE
// MARK: - FONT
// MARK: - STRING
// MARK: - MISC

