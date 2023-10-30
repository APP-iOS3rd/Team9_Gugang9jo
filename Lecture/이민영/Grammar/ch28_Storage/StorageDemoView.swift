//
//  StorageDemoView.swift
//  DemoProject2
//
//  Created by 이민영 on 2023/10/26.
//
/**
 키-값 쌍으로 저장 되므로, 가져올 땐 키 값을 가져온다
 
 - @AppStorage:
        - 보통 app 1개당 1개씩
        - App의 다른 시리즈별로 1개씩 가능
 
 */

import SwiftUI

struct StorageDemoView: View {
    var body: some View {
        TabView{
            SceneStorageView() //화면 저장소 사용해보기
                .tabItem{
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            AppStorageView() //앱 저장소 사용해보기
                .tabItem{
                    Image(systemName: "circle.fill")
                    Text("AppStorage")
                }
        }
    }
    
}

#Preview {
    StorageDemoView()
}
