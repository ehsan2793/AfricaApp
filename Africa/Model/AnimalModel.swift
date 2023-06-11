//
//  AnimalModel.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import Foundation
import SwiftUI
struct AnimalModel: Hashable, Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let Link: String
    private let image: String
    let gallery: [String]
    let fact: [String]

    var animalImage: Image {
        Image(image)
    }
}
