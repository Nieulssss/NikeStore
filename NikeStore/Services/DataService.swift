//
//  DataService.swift
//  NikeStore
//
//  Created by Niels on 02/02/2026.
//

import Foundation

struct DataService {
    struct Response: Codable {
        let shoes: [Shoe]
        let shirts: [Shirt]
    }
    
    func loadProducts() -> Response? {
        guard let url = Bundle.main.url(forResource: "Products", withExtension: "json") else {
            print("ERREUR : Fichier Products.json introuvable dans le bundle.")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(Response.self, from: data)
        } catch {
            // C'EST ICI QUE TU VERRAS LE PROBLÈME DANS LA CONSOLE
            print("ERREUR DE DÉCODAGE : \(error)")
            return nil
        }
    }
}
