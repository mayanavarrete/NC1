//
//  playShuffleButtons.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 16/11/23.
//

import SwiftUI

struct TopButtonView: View {
    var icon: String
    var text: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 160, height: 50)
                .foregroundStyle(Color.myGrayColor)
            HStack{
                Image(systemName: icon)
                    .fontWeight(.bold)
                Text(text)
                    .fontWeight(.semibold)
            }
            .foregroundColor(.red)
        }
    }
}

#Preview {
    TopButtonView(icon: "play.fill", text: "Play")
}
