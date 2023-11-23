//
//  ReproductionView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 17/11/23.
//

import SwiftUI

struct AlbumAnimationView: View {
    
    @Namespace var animation
    @Binding var isZoomed: Bool
    
    var model: AlbumViewModel = AlbumViewModel()
    var album: Album
    
    var frame: Double {
        isZoomed ? 250 : 65
    }
    
    var body: some View {
        
        VStack {
                HStack {
                    Image(album.image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .frame(width: frame, height: frame)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(.top, isZoomed ? 75 : 0)
                        .padding(.bottom, isZoomed ? 75 : 0)
                        .padding(.leading, isZoomed ? 0 : 20)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                isZoomed.toggle()
                            }
                        }
                    
                    if isZoomed == false {
                        VStack(alignment: .leading){
                            Text(album.songs[0].title)
                                .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                                .font(.headline)
                                .lineLimit(1)
                            Text(album.artist)
                                .matchedGeometryEffect(id: "ArtistName", in: animation)
                                .lineLimit(1)
                        }
                        .onTapGesture {
                            withAnimation(.spring()) {
                                isZoomed.toggle()
                            }
                        }
                        Spacer()
                        Image(systemName: "ellipsis.circle.fill")
                            .matchedGeometryEffect(id: "ellipsis", in: animation)
                            .font(.system(size: 25))
                            .symbolRenderingMode(.hierarchical)
                    }
                }
            
                if isZoomed == false {
                    HStack{
                        Text("Up Next")
                        Spacer()
                        Image(systemName: "shuffle")
                            .padding(.trailing, 5)
                        Image(systemName: "repeat")
                            .padding(.trailing, 5)
                        Image(systemName: "infinity")
                    }
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                        .fontWeight(.bold)
                    QueueView()
                }
                
                if isZoomed == true {
                    HStack{
                        VStack{
                            Text(album.songs[0].title)
                                .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                            Text(album.artist)
                                .matchedGeometryEffect(id: "ArtistName", in: animation)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                                .lineLimit(1)
                        }
                        Image(systemName: "ellipsis.circle.fill")
                            .matchedGeometryEffect(id: "ellipsis", in: animation)
                            .font(.system(size: 25))
                            .symbolRenderingMode(.hierarchical)
                    }
                }
            }
            
            .padding()
            .frame(maxWidth: .infinity)
    
    }
}

#Preview {
    AlbumAnimationView(isZoomed: .constant(true), album: Album(name: "The Silver Cord", year: 2023, artist: "King Gizzard & The Lizard Wizard", image: "SilverCord", songs: [
        Song(star: true, number: 1, title: "Theia"),
        Song(star: true, number: 2, title: "The Silver Cord"),
        Song(star: true, number: 3, title: "Set"),
        Song(star: true, number: 4, title: "Change"),
        Song(star: false, number: 5, title: "Gilgamesh"),
        Song(star: false, number: 6, title: "Swan Song"),
        Song(star: false, number: 7, title: "Exctinction"),
        Song(star: false, number: 1, title: "Theia (Extended Mix)"),
        Song(star: false, number: 2, title: "The Silver Cord (Extended Mix)"),
        Song(star: false, number: 3, title: "Set (Extended Mix)"),
        Song(star: false, number: 4, title: "Change (Extended Mix)"),
        Song(star: false, number: 5, title: "Gilgamesh (Extended Mix)"),
        Song(star: false, number: 6, title: "Swan Song (Extended Mix)"),
        Song(star: false, number: 7, title: "Exctinction (Extended Mix)")
    ], genre: "Alternative", description: "The shape-shifting Aussies dive into metaphysics and electronics.", releaseDate: "27 October 2023", duration: "14 songs, 1 hour 57 minutes", copyright: "℗ 2023 KGLW"))
    .background(Color.gray)
}
