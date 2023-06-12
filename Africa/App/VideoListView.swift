//
//  VideoListView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/10/23.
//

import SwiftUI

struct VideoListView: View {
    @State var vidoes: [Video]
    @State var v = videos
    var body: some View {
        NavigationView {
            List {
                ForEach(v) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                } //: LOOP
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(
                        action: {
                            v.shuffle()
                        }, //: ACTION,
                        label: {
                            Image(systemName: "arrow.2.squarepath")
                                .resizable()
                        } //: LABEL
                    )
                }
            }
        } //: NAVIGATION
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView(vidoes: videos)
    }
}
