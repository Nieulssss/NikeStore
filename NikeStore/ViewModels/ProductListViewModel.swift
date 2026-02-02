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
    
    private let dataService = DataService()
        
        init() {
            refresh()
        }
        
        func refresh() {
            if let data = dataService.loadProducts() {
                self.shoes = data.shoes
                self.shirts = data.shirts
            }
        }
}
