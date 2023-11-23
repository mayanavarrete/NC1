//
//  AlbumViewModel.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import Foundation

class AlbumViewModel {
    var album = Album(name: "The Silver Cord", year: 2023, artist: "King Gizzard & The Lizard Wizard", image: "SilverCord", songs: [
    Song(star: true, number: 1, title: "Theia"),
    Song(star: true, number: 2, title: "The Silver Cord"),
    Song(star: true, number: 3, title: "Set"),
    Song(star: true, number: 4, title: "Chang'e"),
    Song(star: false, number: 5, title: "Gilgamesh"),
    Song(star: false, number: 6, title: "Swan Song"),
    Song(star: false, number: 7, title: "Exctinction"),
    Song(star: false, number: 1, title: "Theia (Extended Mix)"),
    Song(star: false, number: 2, title: "The Silver Cord (Extended Mix)"),
    Song(star: false, number: 3, title: "Set (Extended Mix)"),
    Song(star: false, number: 4, title: "Chang'e (Extended Mix)"),
    Song(star: false, number: 5, title: "Gilgamesh (Extended Mix)"),
    Song(star: false, number: 6, title: "Swan Song (Extended Mix)"),
    Song(star: false, number: 7, title: "Exctinction (Extended Mix)")
    ], genre: "Alternative", description: "The shape-shifting Aussies dive into metaphysics and electronics.", releaseDate: "27 October 2023", duration: "14 songs, 1 hour 57 minutes", copyright: "℗ 2023 KGLW")
    
    var moreBy = [
        AnotherAlbumBy(image: "Infest", title: "Infest the Rats' Nest", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Nonagon", title: "Nonagon Infinity", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Flying", title: "Flying Microtonal Banana", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "PetroDragonic", title: "PetroDragonic Apocalypse", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Sketches", title: "Sketches of Brunswick East", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Murder", title: "Murder of the Universe", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Polygondwanaland", title: "Polygondwanaland", artist: "King Gizzard & The Lizard Wizard"),
        AnotherAlbumBy(image: "Omnium", title: "Omnium Gatherum", artist: "King Gizzard & The Lizard Wizard")
    ]
    
    var featuredOn = [
        Playlist(image: "Essentials", name: "King Gizzard & The Lizard Wizard Essentials", genre: "Apple Music Alternative"),
        Playlist(image: "Astral", name: "Astral Escapes", genre: "Apple Music Indie"),
        Playlist(image: "Midnight", name: "Midnight City", genre: "Apple Music Indie"),
        Playlist(image: "IndieElectronic", name: "Indie Electronic", genre: "Apple Music Indie"),
        Playlist(image: "Untitled", name: "Untitled", genre: "Apple Music Indie"),
        Playlist(image: "Breaking", name: "Breaking Hard Rock", genre: "Apple Music Hard Rock"),
        Playlist(image: "NewInIndie", name: "New in Indie", genre: "Apple Music Indie"),
        Playlist(image: "Sinister", name: "Sinister Sounds", genre: "Apple Music Hard Rock"),
    ]
}
