//
//  거짓말 1043.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/24.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution1043() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    var truth = readLine()!.split(separator: " ").map { Int($0)! }
    
    var arr = [Set<Int>]()
    for i in 0 ..< nm[1] {
        var input = readLine()!.split(separator: " ").map { Int($0)! }
        
        var inpu2t = input[input.index(input.startIndex, offsetBy: 1) ..< input.endIndex]
        var check = Array(inpu2t)
        
        arr.append(Set(check))
    }
    
    var answer = 0
    
    for i in 0 ..< arr.count {
        var flag = false
        for j in 0 ..< truth[0] {
            if arr[i].contains(truth[j + 1]) {
                flag = true
                break
            }
        }
        if !flag {
            answer += 1
        }
        
    }
    
    print(answer)
}
