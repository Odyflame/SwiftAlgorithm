//
//  66. Plus One.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var answer = [Int]()
    var carry = 1
    
    for i in digits.reversed() {
        answer.append( (carry + i) % 10  )
        carry = (carry + i) / 10
    }
    
    if carry > 0 {
        answer.append(carry)
    }
    
    return answer.reversed()
}
