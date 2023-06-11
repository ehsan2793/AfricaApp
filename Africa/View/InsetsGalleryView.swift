//
//  InsetsGalleryView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/11/23.
//

import SwiftUI

struct InsetsGalleryView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: PREVIEW

struct InsetsGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetsGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
