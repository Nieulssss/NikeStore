//
//  ProductListViewModel.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

class ProductListViewModel: ObservableObject {
    @Published var shoes: [Shoe] = []
    @Published var shirts: [Shirt] = []
    @Published var products: [any Product] = []
    
    var category: String
    
    private let dataService = DataService()
        
    init(category: String) {
        self.category = category
            refresh()
        }
        
        func refresh() {
            if let data = dataService.loadProducts() {
                if category == "Shoe" {
                    self.shoes = data.shoes
                }
                else if category == "Shirt"{
                    self.shirts = data.shirts
                }
                self.products = shoes + shirts
            }
        }
}
