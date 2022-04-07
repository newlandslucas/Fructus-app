//
//  FruitsModel.swift
//  Fructus
//
//  Created by Lucas Newlands on 07/04/22.
//

import Foundation
import SwiftUI

// Mark - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
