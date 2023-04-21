//
//  FruitCardView.swift
//  Fruits
//
//  Created by Admin on 20/04/2023.
//

import SwiftUI

struct FruitCardView: View {
    //properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // fruit image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // fruit title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                // fruit headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // button start
                StartButtonView()
            } // vstack
        } // zstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        })
        .onDisappear(perform: {
            isAnimating = false
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[6])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
