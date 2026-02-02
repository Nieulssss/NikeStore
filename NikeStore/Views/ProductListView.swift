//
//  ProductListView.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import SwiftUI

struct ProductListView: View {
    @StateObject var viewModel = ProductListViewModel()
    
    var body: some View {
        VStack{
            List {
                ForEach(viewModel.shoes) {shoe in
                    Text(shoe.title)
                }
            }
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
