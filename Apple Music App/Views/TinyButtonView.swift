//
//  TinyButtonView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 21/11/23.
//

import SwiftUI

struct TinyButtonView: View {
    var icon: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 33, height: 33)
                .opacity(0.5)
                .foregroundStyle(.white)
            Image(systemName: icon)
                .foregroundStyle(.gray)
                .font(.system(size: 20))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    TinyButtonView(icon: "shuffle")
        .background(Color.gray)
}
