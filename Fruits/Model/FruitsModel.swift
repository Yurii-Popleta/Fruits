//
//  FruitsModel.swift
//  Fruits
//
//  Created by Admin on 21/04/2023.

import SwiftUI

// fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

