//
//  VolumeSliderView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 20/11/23.
//

import SwiftUI

struct VolumeSliderView: View {
    @State var sliderValue : Float = 0.0
    
    var body: some View {
        Slider(value: $sliderValue,
                   in: 0...10,
               step: 0.1) {} 
            minimumValueLabel: {
            Image(systemName: "speaker.fill")
                .font(.headline)
            }
            maximumValueLabel: {
            Image(systemName: "speaker.wave.3.fill")
                .font(.headline)
            }
            .padding()
            .tint(.white)
            .foregroundColor(.white)
            .frame(width: 365)
    }
}

#Preview {
    VolumeSliderView()
        .background(Color.gray)
}
