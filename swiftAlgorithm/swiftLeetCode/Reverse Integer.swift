//
//  Reverse Integer.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
    
    var srr = String(x)
    var temp = 1
    
    
    var sArray: [Character] = Array(srr)
    
    if srr.hasPrefix("-") {
        temp = -1
        srr.removeFirst()
    }
    
    var answer = srr.reversed()
    
    String(answer)
    
    if Int(String(answer))! > 2147483648 || Int(String(answer))! <= -2147483648 {
        return 0
    }
    
    return temp * Int(String(answer))!
}
