//
//  ReproductionView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 20/11/23.
//

import SwiftUI

struct ReproductionView: View {
    var model: AlbumViewModel = AlbumViewModel()
    @State private var isZoomed: Bool = true
    
    var body: some View {
        VStack{
            AlbumAnimationView(isZoomed: $isZoomed, album: AlbumViewModel().album)
            
            Spacer()
            
            TimeSliderView()
                .padding(.bottom, 30)
            
            HStack{
                    Spacer()
                Image(systemName: "backward.fill")
                    .font(.system(size: 30))
                Spacer()
                Image(systemName: "play.fill")
                    .font(.system(size: 40))
                Spacer()
                Image(systemName: "forward.fill")
                    .font(.system(size: 30))
                Spacer()
            }
            .padding()
            
            VolumeSliderView()
            
            HStack{
                    Spacer()
                Image(systemName: "quote.bubble")
                    .padding(3)
                    Spacer()
                Image(systemName: "airplayaudio")
                    .padding(3)
                    Spacer()
                Button(action: {withAnimation(.spring()) {
                    isZoomed.toggle()
                }}, label: {
                    Image(systemName: "list.bullet")
                        .foregroundStyle(isZoomed ? .white : .gray)
                })
                .frame(height: 25)
                .padding(2)
                .background(isZoomed ? RoundedRectangle(cornerRadius: 10).fill(.clear) : RoundedRectangle(cornerRadius: 7).fill(.white.opacity(0.9)))
                    Spacer()
                
            }
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.white)
            .font(.system(size: 20))
            .fontWeight(.bold)
            .padding(.bottom, 20)
            
        }
        .background(Color.gray)
        .foregroundColor(.white)
    }
}

#Preview {
    ReproductionView()
}
