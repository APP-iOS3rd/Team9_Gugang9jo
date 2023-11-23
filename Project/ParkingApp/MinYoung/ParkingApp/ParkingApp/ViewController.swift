//
//  ViewController.swift
//  ParkingApp
//
//  Created by 이민영 on 2023/11/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var address: UILabel!
    
    @IBOutlet var type: UILabel!
    
    
    @IBAction func pressDodge(_ sender: Any) {
        RequestFile().getRequestData(self)
      
    }
                                                                                       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension ViewController{
    func didSuccess(_ response: ParkingLot){
        print("Success")
        print(response.getParkingInfo.row)
//        let getName = response.row?[0].parkingName
//        let getAddress = response.row?[0].addr
//        let getType = response.row?[0].parkingType
//        self.name.text = getName
//        self.address.text = getAddress
//        self.type.text = getType
    }
}
