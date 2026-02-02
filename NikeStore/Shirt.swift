//
//  Shirt.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

struct Shirt: Product, Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var price: Double
    
    var size: String
    var cut: String
}
