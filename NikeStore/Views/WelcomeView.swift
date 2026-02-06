//
//  WelcomeView.swift
//  NikeStore
//
//  Created by Niels on 03/02/2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Bievenue sur Nike Store !")
                    .font(.largeTitle)
                    .fontWeight(.black)
                NavigationLink (destination: ProductListView(category: "Shoe")){
                    Image("shoe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                }
                NavigationLink (destination: ProductListView(category: "Shirt")){
                    Image("shirt")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
