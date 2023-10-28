//
//  Food.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

class Food {
    var name : String?
    var price : Int?
    
    init(name: String? = nil, price: Int? = nil) {
        self.name = name
        self.price = price
    }
    
    func order() {
        
    }
}

class Pizza : Food {
    private var topping : String?
    
    init(topping: String? = nil) {
        super.init()
        self.topping = topping
    }
    
    override func order() {
        if let foodName = self.name, let foodPrice = self.price, let foodTopping = self.topping {
            print("\(foodTopping) \(foodName)에 를 주문하였습니다. 가격은 \(foodPrice)원입니다.")
        }
    }
}

class Pasta : Food {
    private var source : String?
    
    init(source: String? = nil) {
        super.init()
        self.source = source
    }
    
    override func order() {
        if let foodName = self.name, let foodPrice = self.price, let foodSource = self.source {
            print("\(foodName) 파스타에 \(foodSource)를 선택하였습니다. 가격은 \(foodPrice)원입니다.")
        }
    }
}

