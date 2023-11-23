//
//  TimeSliderView.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 20/11/23.
//

import SwiftUI

struct TimeSliderView: View {
    @State var sliderValue : Float = 0.0
    
    var body: some View {
        VStack{
//            Slider(value: $sliderValue,
//                       in: 0...10,
//                   step: 0.1) {}
//                .tint(.white)
//                .foregroundColor(.white)
            ProgressView(value:5, total:15)
                .tint(.white)
            
            HStack{
                Text("0:69")
                Spacer()
                Text("4:20")
            }
            .font(.footnote)
            .fontWeight(.semibold)
            .opacity(0.5)
        }
        .frame(width: 325)
    }
}

#Preview {
    TimeSliderView()
        .background(Color.gray)
}
