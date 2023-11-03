//
//  TabView.swift
//  MusicApp
//
//  Created by 김소혜 on 11/3/23.
//
import SwiftUI
 

struct TabBarView:View {
    
    var body: some View {
        NavigationView{
            TabView{
                
                NavigationView{
                    ContentView()
                }.tag(0)
                .tabItem {
                    Image(systemName: "music.note.house")
                        .resizable()
                    Text("홈")
                }
                
                NavigationView{
                    FavoriteListView()
                }.tag(1)
                .tabItem {
                    Image(systemName: "heart.fill")
                        .resizable()
                    Text("보관함")
                }
     
 
            }
        }
    }
}
