//
//  ContentView.swift
//  MusicApp
//
//  Created by 이민영 on 2023/11/02.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject var musicStore: MusicStore = MusicStore(musics: musicData)
    @State var selectedIdx = 0
    @State var PlayList : [MusicSrc] = []

    var body: some View {
        NavigationStack{
            VStack{
                List {
                    ForEach(0..<musicStore.musics.count, id: \.self) { i in
                        NavigationLink(destination: PlayMusic(selectedIdx: $selectedIdx, PlayList: $PlayList)
                                .onAppear {
                                    let selectedMusic = musicStore.musics[i]
                                    if PlayList.contains(where: {$0.title == selectedMusic.title}){
                                        if let index = PlayList.firstIndex(where: { $0.title  == selectedMusic.title }) {
                                            PlayList.swapAt(index, 0) // PlayList의 첫 번째 인덱스로 이동
                                        }
                                    }
                                    else {
                                        PlayList.append(selectedMusic)
                                    }
                                })
                            {
                            MusicList(musicStore: musicStore, i: i)
                        }
                    }
                }
                .navigationTitle("GuMusic")
            }
        }
    }
}

struct MusicList: View {
    let musicStore: MusicStore
    let i : Int
    
    var body: some View {
    
            HStack {
                AsyncImage(url: URL(string: musicStore.musics[i].image )){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 80, height: 80)
                    
                
                VStack(alignment: .leading, content: {
                    Text(musicStore.musics[i].title)
                        .font(.headline)
                        .lineLimit(3) //3줄까지만 제한을 둔다.
                    Text(musicStore.musics[i].artist)
                    
                        
                })
            }
            
        
    }
}


#Preview {
    ContentView(selectedIdx: 0)
}
