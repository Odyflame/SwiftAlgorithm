//
//  67. Add Binary.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    var answer = ""
    
    var count = a.count > b.count ? a.count : b.count
    
    var carry = 0
    for i in 0 ..< count {
        var tempA = "0"
        var tempB = "0"
        
        if i < a.count {
            tempA = a.charAt(index: a.count - i - 1)
        }
        if i < b.count {
            tempB = a.charAt(index: b.count - i - 1)
        }
        
        switch Int(tempA)! + Int(tempB)! + carry {
        case 3:
            carry = 1
            answer = "1" + answer
        case 2:
            carry = 1
            answer = "0" + answer
        case 1:
            carry = 0
            answer = "1" + answer
        case 0:
            carry = 0
            answer = "0" + answer
        default:
            break
        }
    }
    
    if carry > 0 {
        return "1" + answer
    }
    
    return answer
}

extension String {
    func charAt(index: Int) -> String {
        let finalIndex = self.index(self.startIndex, offsetBy: index)
        return String(self[finalIndex])

    }
}

