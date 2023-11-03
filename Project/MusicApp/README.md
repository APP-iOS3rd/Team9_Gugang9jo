# MusicApp

## 프로젝트 소개
> 유튜브 뮤직 컨셉으로 Navigation, List 뷰를 중심으로 만든 실습 앱입니다.


## 페이지 구성

|`시작 페이지`|`플레이 뮤직 페이지`|`플레이 리스트 페이지`|
|-------|-------|-------|
|<img src="https://github.com/APP-iOS3rd/Team9_Gugang9jo/blob/main/Project/MusicApp/docsImage/MainView.png"  width="200" height="300">|<img src="https://github.com/APP-iOS3rd/Team9_Gugang9jo/blob/main/Project/MusicApp/docsImage/PlayView.png"  width="200" height="300">|<img src="https://github.com/APP-iOS3rd/Team9_Gugang9jo/blob/main/Project/MusicApp/docsImage/PlayListView.png"  width="200" height="300">

## 특징
1. 음악 선택시 자동으로 Playlist에 저장
2. Playlist에 이미 있는 음악 선택시 선택한 음악 맨 위로 정렬
3. bottom sheet drawer을 사용하여 playlist 구현

## 릴리스 노트
| Version | 변경사항 |
| ------- | -------- |
| 1.0     | Json 파일 사용, 비동기 이미지 다운로드 |

### 시작 페이지 (ContentView)

<strong>기능 설명</strong>

```
1. Bilboard api - Top tracks json파일을 받아서 진행
2. Json text를 기반으로 자료형 구조화
3. NavigationStack을 이용해서 각 item을 플레이 페이지와 연결
4. List 설명
    - 앨범 이미지 - url로 직접 받아오기 위해 AsyncImage 함수 사용
    - 텍스트 - 데이터 배열과 list index 값을 맞춰서 보여주기 진행
```

### 플레이 페이지 (PlayMusicView)


### 마이 플레이리스트 페이지 (PlayMusicView)
