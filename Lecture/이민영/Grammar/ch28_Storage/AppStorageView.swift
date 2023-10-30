//
//  AppStorageView.swift
//  DemoProject2
//
//  Created by 이민영 on 2023/10/26.
// appStorage는 하드, sceneStorage는 메모리
/**
 init(): 처음 뷰가 만들어질때 실행됨
 onAppear: 뷰가 만들어지고, 화면에 나타난 뒤 실행됨
 userName이란 변수가 만들어진 뒤에 onAppear에서 userName에 값을 넣어줘서 하나의 값이 유지됩니다.
 */

import SwiftUI


struct UserName: Encodable, Decodable{
    var firstName: String
    var secondName: String
}

struct AppStorageView: View {
    // 앱이 꺼질때까지 데이터보관 가능
    @AppStorage("mytext") var editorText:String = "Sample Text"
    @AppStorage("username") var namestore: Data = Data()
    
    @State var username = UserName(firstName: "lee", secondName:"min")
    
    
    
    // 화면내에서의 초기 함수 작성
//    init(){
//        let decoder = JSONDecoder()
//        // Data 형식인 namestore를 string 으로 decode 
//        if let name = try? decoder.decode(UserName.self, from: namestore){
//            username = name
//        }
//    }
    
    var body: some View {
        
        
        VStack{
            HStack{
                TextField("firstname", text: $username.firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onAppear(){
                        let decoder = JSONDecoder()
                        // Data 형식인 namestore를 string 으로 decode
                        if let name = try? decoder.decode(UserName.self, from: namestore){
                            username = name
                        }
                    }

                TextField("secondname", text: $username.secondName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Button("username save"){
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(username){
                    namestore = data
                    editorText = data.base64EncodedString() // encoding 결과 확인
                }
            }
            
            
            TextEditor(text: $editorText)
                .padding(30)
                .font(.largeTitle)
        }
        .background(Color.mint)
        
        
        
    }
}

#Preview {
    AppStorageView()
}
