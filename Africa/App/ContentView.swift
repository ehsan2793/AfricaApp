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
    let heptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var isGridViewActive: Bool = false

    // MARK: - BODY

    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
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
                } else {
                    Text("grid view is active")
                } //: CONDITION
            } //: GROUP
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // LIST
                        Button(
                            action: {
                                print("list view")
                                isGridViewActive = false
                                heptics.impactOccurred()
                            }, label: {
                                Image(systemName: "square.fill.text.grid.1x2")
                                    .font(.title2)
                                    .foregroundColor(isGridViewActive ? .primary : .accentColor)
                            })

                        // GRID
                        Button(
                            action: {
                                print("grid view")
                                heptics.impactOccurred()
                                isGridViewActive = true
                            },
                            label: {
                                Image(systemName: "square.grid.2x2")
                                    .font(.title2)
                                    .foregroundColor(isGridViewActive ? .accentColor : .primary)
                            }
                        )
                    } //: HSTACK
                } //: BUTTONS
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(animals: animals)
    }
}
