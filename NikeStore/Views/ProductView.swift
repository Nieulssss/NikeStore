//
//  ProductView.swift
//  NikeStore
//
//  Created by Niels on 03/02/2026.
//

import SwiftUI

struct ProductView: View {
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

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        // On crée un exemple juste pour la preview
        let exampleShoe = Shoe(id: "test", title: "Nike Air", description: "Superbe basket", price: 120, image: "af1", shoeSize: "42", color: "Bleu")
        
        NavigationView {
            ProductView(product: exampleShoe)
        }
    }
}
