//
//  ContentView.swift
//  Fruits
//
//  Created by Admin on 20/04/2023.

import SwiftUI

struct ContentView: View {
    //properties
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //body
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                         isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
        } //Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
