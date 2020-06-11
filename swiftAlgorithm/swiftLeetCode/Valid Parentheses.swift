//
//  Valid Parentheses.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    
    var answer = [Character]()
    var flag = true
    var sArray = Array(s)
    
    for i in 0 ..< sArray.count {
        
        if answer.isEmpty {
            answer.append(sArray[i])
        } else {
            switch sArray[i] {
            case "(":
                answer.append(sArray[i])
            case ")":
                if answer.last == "(" {
                    answer.removeLast()
                } else {
                    flag = false
                    break
                }
            case "[":
                answer.append(sArray[i])
            case "]":
                if answer.last == "[" {
                    answer.removeLast()
                } else {
                    flag = false
                    break
                }
            case "{":
                answer.append(sArray[i])
            case "}":
                if answer.last == "{" {
                    answer.removeLast()
                } else {
                    flag = false
                    break
                }
            default:
                break
            }
        }
    }
    
    if !answer.isEmpty {
        return false
    }
    return flag
}
