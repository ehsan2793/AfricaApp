//
//  ContentView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List {
                CoverImageView(coverImages: coverImages)
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
            } //: LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
