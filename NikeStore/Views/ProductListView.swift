//
//  ProductListView.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import SwiftUI

struct ProductListView: View {
    let category: String
    @StateObject var viewModel: ProductListViewModel
    init(category: String){
        self.category = category
        _viewModel = StateObject(wrappedValue: ProductListViewModel(category: category))
    }
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.products, id: \.id) { product in
                        NavigationLink(destination: ProductView(product: product)) {
                            ProductCard(product: product)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Nike Store")
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(category: "Shoe")
    }
}
