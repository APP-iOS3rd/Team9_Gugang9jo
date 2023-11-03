//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by 이민영 on 2023/11/02.
//

import SwiftUI

@main
struct MusicAppApp: App {
    var body: some Scene {
        WindowGroup {
              AnyView(TabBarView())
        }
    }
}

#Preview {
    AnyView(TabBarView())
}
