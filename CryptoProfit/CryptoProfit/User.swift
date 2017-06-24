//
//  User.swift
//  CryptoProfit
//
//  Created by Zachary Cheshire on 6/23/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation

class User {
    
    private var username: String = ""
    private var password: String = ""
    private var positions: [Position] = []
    var coinCount: [String: Int] = [:]
    
    init(username: String, password: String, positions: [Position]) {
        self.username = username
        self.password = password
        self.positions = positions
    }
    
    func getUsername() -> String {
        
        
        return username
        
    }
    
    func getPassword() -> String {
        
        
       return password
        
    }
    
    func getPositions() -> [Position] {
    
        return positions
    
    }
    
    func getTotalInvestment() -> Int {
        
        
      return 0
        
    }
    
    func setUsername(username: String) -> Void {
        self.username = username
    }
    
    func setPassword(password: String) -> Void {
        self.password = password
    }
    
    func addPosition(position: Position) -> Void {
        self.positions.append(position)
        
    }
    
    func getCoinCount(positions: [Position]) -> [String: Int] {
        for position in positions {
            if position.isOpen() { //If the position is a buy order
                let coinType = position.getCoinType() //Get positions coin tpye
                let cryptoAmount = position.getPositionAmount() //Gets amount of coin ordered
                coinCount[coinType] = coinCount[coinType]! + cryptoAmount
            }
            
            if !position.isOpen() { //Check if position was a sell order
                
                let coinType = position.getCoinType() //Get positions coin tpye
                let cryptoAmount = position.getPositionAmount() //Gets amount of coin ordered
                coinCount[coinType] = coinCount[coinType]! - cryptoAmount
                
            }
            
        }
        return coinCount
    }
    
    
    
    
    
}
