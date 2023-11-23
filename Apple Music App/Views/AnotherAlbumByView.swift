//
//  MoreByAlbum.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import SwiftUI

struct AnotherAlbumByView: View {
    var album: AnotherAlbumBy
    
    var body: some View {
        VStack(alignment: .leading){
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:165, height:165)
                .clipShape(RoundedRectangle(cornerRadius: 7.5))
            Text(album.title)
                .lineLimit(1)
                .font(.subheadline)
            Text(album.artist)
                .lineLimit(1)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }.frame(width: 170)
        
    }
}

#Preview {
    AnotherAlbumByView(album: AnotherAlbumBy(image: "Infest", title: "Infest the Rats' Nest", artist: "King Gizzard & The Lizard Wizard"))
}
