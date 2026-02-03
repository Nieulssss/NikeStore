//
//  Shoe.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

struct Shoe: Product, Identifiable, Codable{
    var id: String
    var title: String
    var description: String
    var price: Double
    var image: String
    
    var shoeSize: String
    var color: String
}
