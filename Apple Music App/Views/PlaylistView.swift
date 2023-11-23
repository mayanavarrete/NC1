//
//  PlaylistView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import SwiftUI

struct PlaylistView: View {
    var playlist: Playlist
    
    var body: some View {
        VStack(alignment: .leading){
            Image(playlist.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:165, height:165)
                .clipShape(RoundedRectangle(cornerRadius: 7.5))
            Text(playlist.name)
                .lineLimit(1)
                .font(.subheadline)
            Text(playlist.genre)
                .lineLimit(1)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }.frame(width: 170)
        
    }
}

#Preview {
    PlaylistView(playlist: Playlist(image: "Omnium", name: "Supercool", genre: "Apple Music Indie"))
}
