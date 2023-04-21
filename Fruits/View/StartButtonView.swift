//
//  StartButtonView.swift
//  Fruits
//
//  Created by Admin on 20/04/2023.
//

import SwiftUI

struct StartButtonView: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //body
    var body: some View {
        Button {
           isOnboarding = false
        } label: {
            HStack(spacing: 8) {
               Text("Start")
                
               Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }    // button
        .tint(.white)
      
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
