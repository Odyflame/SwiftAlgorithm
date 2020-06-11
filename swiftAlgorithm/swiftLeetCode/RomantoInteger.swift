//
//  RomantoInteger.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func romanToInt(_ s: String) -> Int {
    
    var answer = 0
    
    var sArray = Array(s)
    
    var index = 0
    for _ in 0 ..< sArray.count {
        if index >= sArray.count {
            break
        }
        switch sArray[index] {
        case "I":
            answer += 1
            if index + 1 < sArray.count && sArray[index + 1] == "V" {
                answer += 3
                index += 1
            } else if index + 1 < sArray.count && sArray[index + 1] == "X" {
                answer += 8
                index += 1
            }
        case "V":
            answer += 5
        case "X":
            answer += 10
            
            if index + 1 < sArray.count && sArray[index + 1] == "L" {
                answer += 30
                index += 1
            } else if index + 1 < sArray.count && sArray[index + 1] == "C" {
                answer += 80
                index += 1
            }
        case "L":
            answer += 50
        case "C":
            answer += 100
            if index + 1 < sArray.count && sArray[index + 1] == "D" {
                answer += 300
                index += 1
            } else if index + 1 < sArray.count && sArray[index + 1] == "M" {
                answer += 800
                index += 1
            }
        case "D":
            answer += 500
        case "M":
            answer += 1000
        default:
            answer += 0
        }
        index += 1
    }
    
    return answer
}
