//
//  예산 2512.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/14.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution2512() {
    
    let N = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let money = Int(readLine()!)!
    
    var left = 0, right = arr.last!, mid = 0
    var answer = 0
    
    while left <= right {
        mid = (left + right) / 2
        
        var sum = 0
        arr.forEach { (a) in
            if mid >= a {
                sum += a
            } else {
                sum += mid
            }
        }
        
        if sum < money {
            answer = max(mid, answer)
        }
        if sum == money {
            answer = mid
            break
        } else if sum > money {
            right = mid - 1
        } else {
            left = mid + 1
        }
        
    }
    
    print(answer)
}
