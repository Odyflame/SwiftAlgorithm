//
//  Longest Valid Parentheses.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func longestValidParentheses(_ s: String) -> Int {
    
    var stack: [Int] = [-1]
    var result: Int = 0
    let s = Array(s)
    
    for i in 0..<s.count {
        if s[i] == "(" {
            stack.append(i)
        } else {
            stack.popLast()
            if stack.isEmpty {
                stack.append(i)
            }
            else {
                result = result > i - stack.last! ? result : i - stack.last!
            }
        }
    }
    
    return result
}
