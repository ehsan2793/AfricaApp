//
//  MainView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView(animals: animals)
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }

            VideoListView(vidoes: videos)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }

            MapView(locations:locations)
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }

            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        } //: TAB
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
