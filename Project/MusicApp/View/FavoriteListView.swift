//
//  FavoriteListView.swift
//  MusicApp
//
//  Created by 김소혜 on 11/3/23.
//

  
import SwiftUI


struct FavoriteListView:View {
    
    @StateObject var musicStore: MusicStore = MusicStore(musics: musicData)
    @State var selectedIdx = 0
    @State var PlayList : [MusicSrc] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                 Text("보관함")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                }.padding(.horizontal,24)
                ScrollView{
                    ForEach(0..<musicStore.musics.count, id: \.self) { i in
                        NavigationLink(destination: PlayMusic(selectedIdx: $selectedIdx, PlayList:$PlayList)
                                .onAppear {
                                    print(i)
                                    selectedIdx = i
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
                    }.padding(.horizontal,8)
                }
                
            }
            
        }
    }
}
