//
//  Shirt.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

struct Shirt: Product, Identifiable, Codable {
    var id: String
    var title: String
    var description: String
    var price: Double
    var image: String
    
    var size: String
    var cut: String
}
