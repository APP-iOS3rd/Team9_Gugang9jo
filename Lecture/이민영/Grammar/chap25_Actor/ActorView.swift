//
//  Created by 이민영 on 2023/10/23.
//
//  Chap25. Actor
//

import SwiftUI

actor TimeStore {

    var timeStamps: [Int: Date] = [:]

    func addStamp(task: Int, date: Date)  {
        timeStamps[task] = date
    }
}
//예제 2번
actor Multiplier{
    var factor = 0
    init(factor: Int){
        self.factor = factor
    }
    
    func multiply(_ num: Int) async -> Int{
        return factor * num
    }
}

//예제 3번
actor Counter {
    var count = 0
    
    func increment() async {
        count += 1
    }
}

//예제 4번
actor Concatenator{
    
    func concatenate(_ first: String, _ second: String) async -> String{
        return first + second
    }
}

//예제 5번
actor StringEx{
    var word = ""
    init(_ word: String){
        self.word = word
    }
    
    func capitalize() -> String{
        return self.word.uppercased()
    }
    
    func lowercase() -> String{
        return self.word.lowercased()
    }
    
    func reverse() -> String{
        return String(self.word.reversed())
    }
}

//예제 6번
enum MoneyError: Error{
    case balanceLoss
}
actor BankAccount {
  var balance = 0
    
    // TODO: 입금 기능을 구현
    func deposit(_ money: Int){
        balance += money
    }
    
    // TODO: 출금 기능을 구현
    func withdraw(_ money: Int) throws{
        if balance < money{
            throw MoneyError.balanceLoss
        }
        balance -= money
    }
}

struct ActorView: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
                //예제 1번
//                await doSomething()
                //예제 2번
                let multiplier = Multiplier(factor: 2)
                let result = await multiplier.multiply(4)
                print(result)
                
                //예제 3번
                let counter = Counter()
                await counter.increment()
                await print(counter.count)
                
                //예제 4번
                let concatenator = Concatenator()
                
                let result4 = await concatenator.concatenate("Hello", "World")
                print(result4) // 출력 결과: HelloWorld
                
//                //예제 5번
//                let str = StringEx("swIFt")
//                Task {
//                    print(await str.capitalize()) // 출력 결과: SWIFT
//                    print(await str.lowercase()) // 출력 결과: swift
//                    print(await str.reverse()) // 출력 결과: tFIws
//                }
                
                //예제 6번

                let account = BankAccount()

                Task {
                  // TODO: account 에 1000원을 입금
                    await account.deposit(1000)
                    print("입금완료", await account.balance)

                  // TODO: account 에서 500원을 출금
                    do{
                        try await account.withdraw(500)
                        
                    }
                    catch(MoneyError.balanceLoss){
                        print("1000-500 = 잔액부족")
                    }
                    
                    // TODO: account 의 잔액을 출력
                    print("1000-500", await account.balance)
                }

                Task {
                  // TODO: account 에 3000원을 입금
                    await account.deposit(3000)
                    print("입금완료", await account.balance)
                  // TODO: account 에서 6000원을 출금
                    do{
                        try await account.withdraw(6000)
 
                    }
                    catch(MoneyError.balanceLoss){
                        print("3000-6000 = 잔액부족")
                    }
                    // TODO: account 의 잔액을 출력
                    print("잔액 출력", await account.balance)
                    
                  
                }
                
            }
        }, label: {
            Text("Do Something")
        })
        
        
    }

    func doSomething() async {

        let store = TimeStore()

        print("Start \(Date())")

        await withTaskGroup(of: Void.self) { group in
            for i in 1...5 {
                group.addTask {
                    await store.addStamp(task: i, date: await takeTooLong())
                }
            }
        }

        for (task, date) in await store.timeStamps {
            print("Task = \(task), Date = \(date)")
        }

        print("End \(Date())")
    }

    func takeTooLong() async -> Date {
        sleep( UInt32.random(in: 1...5) )   // 랜덤 초 지연
        return Date()
    }
}
#Preview {
    ActorView()
}
