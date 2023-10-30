//
//  SceneStorageView.swift
//  DemoProject2
//
//  Created by 이민영 on 2023/10/26.
//

import SwiftUI

struct SceneStorageView: View {
    
    @SceneStorage("mytext") private var editorText: String = ""
//    @State private var editorText: String = ""
    // 이러면 뒤로가기 후 다시 들어왔을때 초기화 된다.
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
