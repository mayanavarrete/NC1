//
//  Song.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 15/11/23.
//

import Foundation

struct Song: Identifiable {
    var id = UUID()
    var star: Bool
    var number: Int
    var title: String
}
