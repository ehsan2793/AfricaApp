//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/16/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        animal.animalImage
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: PREVIEW

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animlas: [Animal] = animals
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
