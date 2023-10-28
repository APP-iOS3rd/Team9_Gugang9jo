//
//  Rect.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

struct Point {
    var x = 0.0, y = 0.0 //이렇게 한 줄에 "저장 프로퍼티"를 선언했네요 :)
}
 
struct Size {
    var width = 0.0, height = 0.0 //역시나 입니다.
}
 
struct Rect {
 
    //저번에 배운 CGRect와 비슷하다고 생각하시면 됩니다!!
    var origin = Point()//origin은 x,y좌표니 Point()타입으로 만들어주고
 
    var size = Size()//size는 너비와 높이를 가지니 Size()타입으로 만들어줍니다.
 
    var center: Point {
 
        //center라 함은 어떤 사각형의 가운데인 "좌표"겠죠? 그러니 Point타입으로 선언해주고!! get과 set이 나오는 것을 보니 center는 "연산 프로퍼티"임을 알 수 있네요.
 
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            //get에도 위처럼 새로 변수를 선언하고 값을 할당 할 수 있어요. 리턴만 제대로 해주면 된답니다.
            //리턴하는 타입은 center의 타입과 반드시 같아야해요. 즉 Point 타입.
 
            return Point(x: centerX, y: centerY)
 
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
