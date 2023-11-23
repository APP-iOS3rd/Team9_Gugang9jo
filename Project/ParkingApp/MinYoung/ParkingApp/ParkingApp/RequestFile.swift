//
//  RequestFile.swift
//  
//
//  Created by 이민영 on 2023/11/23.
//

import Alamofire
import UIKit
import SwiftUI

class RequestFile{
    
    func getRequestData(_ viewController: ViewController){
        let url = "http://openapi.seoul.go.kr:8088/52455762756d696e36334365566d4b/json/GetParkInfo/1/10/신림동" //발급받은 키 추가
            
//            //HTTP Method GET
//            AF.request(url,
//                       method: .get)
//            .responseDecodable(of: ParkingLot.self) {response in
//                
//                switch response.result{
//                case .success(let response):
//                    print("DEBUG>> OpenAPI Response \(response)")
//                    viewController.didSuccess(response)
//                    
//                case .failure(let error):
//                    print("DEBUG>> OpenAPI Get Error : \(error.localizedDescription)")
//                }
//            }
        
        
            AF.request(url,
                   method: .get,
                   parameters: nil)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: ParkingLot.self) { response in
                switch response.result {
                    
                case .success(let response):
//                    viewController.serverData = response.data
                    viewController.didSuccess(response)
                case .failure(let error):
                    print(error.localizedDescription)
                    print(response.result)
            
                }
            }
    }
    
}

