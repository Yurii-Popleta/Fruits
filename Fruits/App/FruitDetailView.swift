//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Admin on 21/04/2023.
//

import SwiftUI

struct FruitDetailView: View {
    //properties
    var fruit: Fruit
    
    //body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                          .font(.headline)
                          .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                   FruitNutrientsView(fruit: fruit)
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                          .fontWeight(.bold)
                          .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                          .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //vstack
                    .padding(.horizontal, 20)
                    .frame().frame(maxWidth: 640, alignment: .center)
                } //vstack
//                .navigationTitle(fruit.title)
//                .navigationBarTitleDisplayMode(.inline)
            } //scroll
            .edgesIgnoringSafeArea(.top)
        } //navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
