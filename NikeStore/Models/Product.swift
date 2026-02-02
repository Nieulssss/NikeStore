//
//  Product.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

protocol Product {
    var id: String {get}
    var title: String {get}
    var description: String {get}
    var price: Double {get}
}
