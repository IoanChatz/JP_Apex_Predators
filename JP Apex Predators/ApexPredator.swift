//
//  ApexPredator.swift
//  JP Apex Predators
//
//  Created by Chatzinikolaou Ioannis on 31/7/23.
//

import Foundation
import SwiftUI

struct ApexPredator: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String

    func typeOverlay() -> Color {
        switch type {
        case "land":
            return .brown
        case "air":
            return .teal
        case "sea":
            return .blue
        default:
            return .black
        }
    }
}


struct MovieScene: Codable {
    let id: Int
    let movie: String
    let sceneDescription: String
}
