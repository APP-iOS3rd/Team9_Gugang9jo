//
//  ViewController.swift
//  ParkingApp
//
//  Created by 이민영 on 2023/11/24.
//

import UIKit
import Alamofire
import SwiftyJSON
import NMapsMap

class ViewController: UIViewController {
    
    
    let naverMapView = NMFNaverMapView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getParkings(district: "강남구") { parkings in
            if let parkings = parkings {
                
                parkings.forEach{ parkInfo in
                    print("위도: \(parkInfo.lat), 경도: \(parkInfo.lng)")
                    
                }
                
            } else {
                print("Failed to fetch or decode parkings.")
            }
        }
        
        
        
        view.addSubview(naverMapView) // NMFNaverView
        // 뷰 생성
     
        
    }
    

    
    
    func getParkings(district: String, completion: @escaping ([Parking]?) -> Void) {
        let url = "http://openapi.seoul.go.kr:8088/52455762756d696e36334365566d4b/json/GetParkingInfo/1/1000/" + district
        
        
        let alamo = AF.request(url, method: .get)
        alamo.validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)
                if let parkingInfo = try? JSONDecoder().decode(ParkingLot.self, from: json.rawData()) {
                    let parkingArray = parkingInfo.getParkingInfo.row
                    let uniqueArr = self.getUnique(parkingArray)
                    completion(uniqueArr)
                } else {
                    print("Failed to decode JSON")
                    completion(nil)
                }
            case .failure(let error):
                print(error.localizedDescription)
                completion(nil)
            }
        }
    }
        
            // [Parking]의 filter작업 및 중복제거
        func getUnique(_ parkings: [Parking]) -> [Parking] {
            // 관광버스 제거
            let filtered = parkings.filter { !$0.parkingName.contains("관광버스")}
            var uniqueParkings = [Parking]()
            var seenCodes = Set<String>()
        
            for parking in filtered {
                if !seenCodes.contains(parking.parkingCode) { // 중복 주차장 처리
                    uniqueParkings.append(parking)
                    seenCodes.insert(parking.parkingCode)
                }
            }

            return uniqueParkings
        }
    
    
    
    
    


}

//extension ViewController: NMFMapViewTouchDelegate, NMFMapViewCameraDelegate {
//    func mapView(_ mapView: NMFMapView, cameraDidChangeByReason reason: Int, animated: Bool) {
//        switch reason {
//        case -1:
//            let lat = mapView.cameraPosition.target.lat
//            let long = mapView.cameraPosition.target.lng
//            print("lat: \(lat)")
//            print("long: \(long)")
//        default:
//            return
//        }
//    }
//}
