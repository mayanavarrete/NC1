//
//  AlbumView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import SwiftUI

struct AlbumView: View {
    
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    @State private var showingModal: Bool = false
    
    var model: AlbumViewModel = AlbumViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Image(model.album.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y:7)
                        .padding()
                    Text(model.album.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(model.album.artist)
                        .font(.title2)
                        .foregroundStyle(.red)
                    Text("\(model.album.genre) · \(String(model.album.year))")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                        .padding(.top, -7)
                        .padding(.bottom)
                    HStack{
                        TopButtonView(icon: "play.fill", text: "Play")
                            .padding(.trailing, 10)
                            .sheet(isPresented: $showingModal, content: {
                                ReproductionView()
                            })
                            .onTapGesture {
                                showingModal = true
                            }
                        TopButtonView(icon: "shuffle", text: "Shuffle")
                    }
                    Text(model.album.description)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .padding()
                    
                    List {
                        ForEach (model.album.songs) {
                            song in
                            HStack{
                                if song.star == true {
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 8))
                                        .foregroundStyle(.gray)
                                }
                                
                                Text(String(song.number))
                                    .foregroundStyle(.gray)
                                    .padding(.leading, song.star ? 0 : 18)
                                Text(song.title)
                                Spacer()
                                Image(systemName: "ellipsis")
                                
                            }
                        }
                    }
                    .frame(minHeight: minRowHeight * CGFloat(model.album.songs.count))
                    .listStyle(.plain)
                    
                }
                
                VStack (alignment: .leading){
                    Text("Apple Digital Master")
                        .foregroundStyle(.gray)
                        .padding(.bottom)
                        .padding(.top, 7.5)

                    Text("\(model.album.releaseDate) \n\(model.album.duration) \n\(model.album.copyright)")
                        .foregroundStyle(.gray)

                }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Buy on iTunes Store")
                    .foregroundStyle(.red)
                    .padding()
                
                VStack (alignment: .leading){
                    Text("More by \(model.album.artist)")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                           ForEach (model.moreBy) {
                               moreByAlbum in
                               AnotherAlbumByView(album: moreByAlbum)
                                    
                                }
                        }
                        .padding(.bottom)
                        .padding(.leading)
                        .padding(.trailing)
                        .scrollClipDisabled(true)
                    }
                    
                    Text("Featured On")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                           ForEach (model.featuredOn) {
                               playlist in
                               PlaylistView(playlist: playlist)
                                    
                                }
                        }
                        .padding(.bottom, 20)
                        .padding(.leading)
                        .padding(.trailing)
                        .scrollClipDisabled(true)
                    }
                    
                    
                }
                .padding(.top)
                .padding(.bottom)
                .background(Color.myGrayColor)
            }
            .navigationTitle(model.album.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack{
                        Button(action:{}){
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .font(.title2)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.red, Color.myGrayColor)
                                  }
                        Button(action:{}){
                            Image(systemName: "ellipsis.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .font(.title2)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.red, Color.myGrayColor)
                                  }
                    }
                }
            }
            
        }
    }
}

#Preview {
    AlbumView()
}
