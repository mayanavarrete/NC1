//
//  QueueView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 20/11/23.
//

import SwiftUI

struct QueueView: View {
    var model: AlbumViewModel = AlbumViewModel()
    
    var body: some View {
        List{
            ForEach (model.album.songs) {
                song in
                HStack{
                    Image(model.album.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 3.5))
                    VStack (alignment: .leading){
                        Text(song.title)
                            .lineLimit(1)
                        Text(model.album.artist)
                            .font(.subheadline)
                            .opacity(0.5)
                            .lineLimit(1)
                    }
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .opacity(0.5)
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.gray)
            }
            .onMove(perform: { indices, newOffset in
                model.album.songs.move (fromOffsets: indices, toOffset: newOffset)
            })
        }
        .listStyle(.plain)
        .toolbar {
            EditButton()
        }
    }
}

#Preview {
    QueueView()
}
