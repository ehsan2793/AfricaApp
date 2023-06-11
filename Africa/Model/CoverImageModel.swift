//
//  CoverImageModel.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct CoverImage: Codable, Identifiable {
    let id: Int
    private let name: String
    
    var image: Image {
        Image(name)
    }
}
