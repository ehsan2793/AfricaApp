//
//  VideoPlayerViwe.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/12/23.
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    // MARK: - PROPERTIES

    var videoSelected: String
    var videoTitle: String

    // MARK: - BODY

    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileForamt: "mp4")) {
//                Text(videoTitle)
            } //: VIDEOPALYER
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } //: VSTACK
        .tint(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: PREVIEW

struct VideoPlayerViwe_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
