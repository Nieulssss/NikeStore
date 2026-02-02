//
//  Shoe.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

struct Shoe: Product, Identifiable{
    var id = UUID()
    var title: String
    var description: String
    var price: Double
    
    var shoeSize: String
    var color: String
}
