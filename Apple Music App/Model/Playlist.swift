//
//  Playlist.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import Foundation

struct Playlist: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var genre: String
}
