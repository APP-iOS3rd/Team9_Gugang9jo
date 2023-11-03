//
//  NewPlayListView.swift
//  NewPro
//
//  Created by 김건호 on 11/2/23.
//

import SwiftUI

struct PlayList: View {
    
    @StateObject var musicStore : MusicStore = MusicStore(musics: musicData)
    var listIdx:[Int] = []
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    
                    ForEach(0..<musicStore.musics.count, id: \.self) { i in
                        HStack{
                            AsyncImage(url: URL(string: musicStore.musics[i].image.first?.text ?? ""))
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading){
                                Text(musicStore.musics[i].name)
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                Text(musicStore.musics[i].name)
                                    .font(.body)
                                    .foregroundStyle(.gray)
                                
                            }
                        }
                        .listRowBackground(Color.black)
                    }
                    .onMove(perform: moveArtist)
                    .onDelete(perform: deleteArtist)
                }
                .scrollContentBackground(.hidden)
                
            }
            .background(Color.black)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    EditButton()
                }
            }
        }
        
    }
    func moveArtist(from source: IndexSet, to destination: Int) {
        musicStore.musics.move(fromOffsets: source, toOffset: destination)
    }
     
    func deleteArtist(at offsets: IndexSet) {
        musicStore.musics.remove(atOffsets: offsets)
    }
}



struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        PlayList()
    }
}
