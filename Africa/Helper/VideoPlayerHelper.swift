//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/12/23.
//

import AVKit
import Foundation

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileForamt: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileForamt) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileForamt)!)
        videoPlayer?.play()
    }

    return videoPlayer!
}
