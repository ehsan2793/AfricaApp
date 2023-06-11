//
//  ContentView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    let animals: [Animal]

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                CoverImageView(coverImages: coverImages)
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                ForEach(animals) { animal in
                    NavigationLink(
                        destination: AnimalDetailView(animal: animal),
                        label: {
                            AnimalListItemView(animal: animal)
                        }
                    ) //: LINK
                } //: LOOP
            } //: SCROLL
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(animals: animals)
    }
}
