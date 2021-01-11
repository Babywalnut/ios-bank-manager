//
//  BankManagerConsoleApp - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

func main() {
    let bank = Bank()
    let tellerCount = 3
    let maxClientCount = 30
    let minClientCount = 10
    var isContinue = true
    
    while isContinue {
        Dashboard.printMenu()
        
        guard let input = readLine(), let command = Menu(rawValue: input) else {
            print(BankError.wrongInput.description)
            continue
        }
        
        switch command {
        case .start:
            let randomNumber = Int.random(in: minClientCount...maxClientCount)
            let clients = Clients.init(count: randomNumber)
            bank.operateBank(teller: tellerCount, client: clients.list)
        case .end:
            isContinue = false
        }
    }
}

main()
