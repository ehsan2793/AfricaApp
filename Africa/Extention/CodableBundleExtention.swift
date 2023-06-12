//
//  CodableBundleExtention.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import Foundation

let animals: [Animal] = load("animals.json")
let coverImages: [CoverImage] = load("covers.json")
let videos: [Video] = load("videos.json")

func load<T: Codable>(_ filename: String) -> T {
    // 1. Locate the json file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find the \(filename) in the main bundle")
    }

    // 2. Create a property for the data

    guard let data = try? Data(contentsOf: file)
    else {
        fatalError("Could not load \(filename) from bundle")
    }

    // 3. Create a decoder
    let decoter = JSONDecoder()

    // 4. Create a property for the decoded data
    guard let loaded = try? decoter.decode(T.self, from: data)
    else {
        fatalError("Could not parase \(filename) from bundle")
    }
    // 5. Return the ready-to-use data

    return loaded
}
