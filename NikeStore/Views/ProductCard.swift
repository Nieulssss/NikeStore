//
//  ProductCard.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import SwiftUI

struct ProductCard: View {
    let product: any Product
    
    var body: some View {
        VStack{
            Image(product.image)
                .resizable() // Permet de redimensionner
                .aspectRatio(contentMode: .fill) // Remplit le cadre sans déformer
                .frame(height: 150) // Hauteur fixe pour la carte
                .clipped() // Coupe ce qui dépasse
                .cornerRadius(15)
            HStack{
                Text(product.title)
                Text("\(product.price, specifier: "%.2f") €")
            }
        }
        
    }
}
