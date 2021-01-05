//
//  BankManager.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

struct BankManager {
    var bank = Bank()
    
    mutating func openBank(bankClerkNumber: Int) {
        for i in 1...bankClerkNumber {
            bank.serviceCounter[i] = BankClerk()
        }
    }
    
    func closeBank() {
        
    }
    
    mutating func visitClients(newClientsNumber: Int) {
        for i in 1...newClientsNumber {
            let client = Client(waitingNumber: i, business: .basic, assignedCounter: 0)
            
            bank.waitingList.append(client)
            bank.totalVistedClientsNumber += newClientsNumber
        }
    }
    
    func assignCounter() {
        
    }

}

