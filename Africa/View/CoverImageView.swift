//
//  CoverImageView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES

    let coverImages: [CoverImage]

    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(coverImages: coverImages)
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
