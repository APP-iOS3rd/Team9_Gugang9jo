//
//  MusicStore.swift
//  MusicApp
//
//  Created by 이민영 on 2023/11/02.
//

import Foundation
class MusicStore: ObservableObject{
    
    @Published var musics: [MusicSrc]
        
        init(musics: [MusicSrc] = []){
            self.musics = musics
    }
    
}
