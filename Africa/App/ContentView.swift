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

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"

    //: MARK: - FUNCTIONS
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        switch gridColumn {
        case 1:
            toolbarIcon = "square"
        case 2:
            toolbarIcon = "square.grid.2x2"

        case 3:
            toolbarIcon = "square.grid.3x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }

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
                                destination: AnimalDetailView(animal: animal)) {
                                    AnimalListItemView(animal: animal)
                                } //: LINK
                        } //: LOOP
                        CreditsView()
                    } //: SCROLL
                } else {
                    ScrollView(.vertical, showsIndicators: true) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                } //: NAVIGATION
                            } //: LOOP
                        } //: GRID
                        .padding(10)
                        .animation(Animation.easeIn, value: isGridViewActive)
                    } //: SCROLL
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
                                gridSwitch()
                            },
                            label: {
                                Image(systemName: toolbarIcon)
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
