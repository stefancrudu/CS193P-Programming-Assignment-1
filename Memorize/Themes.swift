//
//  Themes.swift
//  Memorize
//
//  Created by Stefan Crudu on 26.02.2023.
//

import Foundation


enum Themes: CaseIterable {
    case animals
    case vehicles
    case objects
    
    var icon: String {
        switch self {
        case .animals:
            return "pawprint.circle"
        case .vehicles:
            return "car.circle"
        case .objects:
            return "archivebox.circle"
        }
    }
    
    var name: String {
        switch self {
        case .animals:
            return "Animals"
        case .vehicles:
            return "Vehicles"
        case .objects:
            return "Objects"
        }
    }
    
    var items: [String] {
        switch self {
        case .animals:
            return ["🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐧"]
        case .vehicles:
            return ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🛻"]
        case .objects:
            return ["⌚️", "📱", "💻", "⌨️", "🖨️", "📷", "📟", "🎥", "🕰️", "🧯"]
        }
    }
}
