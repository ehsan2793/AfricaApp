//
//  AnimalModel.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI
struct Animal: Hashable, Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    private let image: String
    let gallery: [String]
    let fact: [String]

    var animalImage: Image {
        Image(image)
    }
}
