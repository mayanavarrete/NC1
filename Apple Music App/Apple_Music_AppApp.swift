//
//  Apple_Music_AppApp.swift
//  Apple Music App
//
//  Created by Maya Navarrete Moncada on 14/11/23.
//

import SwiftUI

@main
struct Apple_Music_AppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                AlbumView()
                    .tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Listen Now")
                    }
                ContentView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }
                ContentView()
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text("Library")
                    }
                ContentView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
            }
            .tint(.red)
        }
    }
}
