//
//  AC 5430.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/23.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

// woongs님의 코드를 참조
func solution5430() {
    let T = Int(readLine()!)!
    
    for _ in 0 ..< T {
        var orders = readLine()!
        var _ = readLine()
        var array = readLine()!.dropFirst().dropLast().split(separator: ",").map({ String($0) })
        
        var head = 0, tail = array.endIndex
        var isReverse = false, isError = false
        
        for order in orders {
            if order == "R" {
                isReverse.toggle()
            } else {
                guard tail > head else {
                    isError = true
                    break
                }
                if isReverse {
                    tail -= 1
                } else {
                    head += 1
                }
            }
        }
        
        if isError {
            print("error")
        } else if head == tail {
            print("[]")
        } else if isReverse {
            print("[\(array[head..<tail].reversed().joined(separator: ",") )]")
        } else {
            print("[\(array[head..<tail].joined(separator: ",") )]")
        }
        
    }
}
