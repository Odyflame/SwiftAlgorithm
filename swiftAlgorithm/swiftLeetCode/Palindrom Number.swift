//
//  Palindrom Number.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    
    if x < 0 {
        return false
    }
    
    var answer = String(x)
    var sArray = Array(answer)
    
    for i in 0 ..< answer.count {
        if sArray[i] != sArray [ answer.count - i - 1] {
            return false
        }
    }
    return true
}
