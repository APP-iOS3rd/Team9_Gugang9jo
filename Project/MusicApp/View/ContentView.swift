
import SwiftUI


struct ContentView: View {
   @StateObject var musicStore: MusicStore = MusicStore(musics: musicData)
   @State var selectedIdx = 0
   @State var PlayList : [MusicSrc] = []

   @State var subTitle : String = "나를 위한 추천"
   @State var mainTitle : String = "인기 급상승 곡"
   var body: some View {
       NavigationStack{
           VStack{
               HStack{
                   Image("YT_Music")
                       .resizable()
                       .scaledToFit()
                       .frame(height: 28)
                   Spacer()
                   Image(systemName: "magnifyingglass")
                       .resizable()
                       .scaledToFit()
                       .frame(height: 20)

               }.padding(.horizontal,24)
               
               ScrollView{
                   
              
               VStack{
                    Text("\(subTitle)")
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("\(mainTitle)")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,alignment: .leading)
               }.padding(24)
               
                   ForEach(0..<min(musicStore.musics.count,4), id: \.self) { i in
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
                   VStack{
                        Text("이 노래로 뮤직 스테이션 시작하기")
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("빠른 선곡")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity,alignment: .leading)
                   }.padding(24)
                   ForEach(0..<min(musicStore.musics.count,4), id: \.self) { i in
                       NavigationLink(destination: PlayMusic(selectedIdx: $selectedIdx, PlayList:$PlayList)
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
                   }.padding(.horizontal,8)
                   Spacer()
               }

           }
       }
   }
}

struct MusicList: View {
   let musicStore: MusicStore
   let i : Int
   
   var body: some View {
           HStack {
               AsyncImage(url: URL(string: musicStore.musics[i].image)){ image in
                   image.resizable()
               } placeholder: {
                   ProgressView()
               }
               .frame(width: 80, height: 80)
               .cornerRadius(4)
               
               VStack(alignment: .leading, content: {
                   Text(musicStore.musics[i].title)
                       .font(.headline)
                       .lineLimit(1) //3줄까지만 제한을 둔다.
                       .frame(maxWidth: .infinity,alignment: .leading)
                       .foregroundColor(.black)
                   Text(musicStore.musics[i].artist)
                       .frame(maxWidth: .infinity,alignment: .leading)
                       .foregroundColor(.black)
                   
                       
               })
           }.padding(.horizontal)
           
       
   }
}


//#Preview {
//   ContentView(selectedIdx: 0)
//}
