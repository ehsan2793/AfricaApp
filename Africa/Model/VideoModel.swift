//
//  VideoModel.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/11/23.
//

import Foundation

struct Video: Hashable, Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    // Computed Property

    var thumnail: String {
        "video-\(id)"
    }
}
