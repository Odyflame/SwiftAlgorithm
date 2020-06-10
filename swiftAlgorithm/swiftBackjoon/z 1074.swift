//
//  z 1074.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/06.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

var input1074: [Int] = []
var sum1072 = 0
var flag = false

func dfs1074(x: Int, y: Int, size: Int) {
    
    if size == 2 {
        
        if !flag {
            if x == input1074[1] && y == input1074[2] {
                flag = true
                return
            }
            else { sum1072 += 1 }
            
            if x + 1 == input1074[1] && y == input1074[2] {
                flag = true
                return
            }
            else { sum1072 += 1 }
            
            if x == input1074[1] && y + 1 == input1074[2]{
                flag = true
                return
            }
            else { sum1072 += 1 }
            
            if x + 1 == input1074[1] && y + 1 == input1074[2] {
                flag = true
                return
            }
            else { sum1072 += 1 }
            
        }
        
    } else {
        dfs1074(x: x, y: y, size: size/2)
        dfs1074(x: x, y: y + size/2, size: size/2)
        dfs1074(x: x + size/2, y: y, size: size/2)
        dfs1074(x: x+size/2, y: y + size/2, size: size/2)
    }
}

func solution1074() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    input1074 = input
    var size1074 = 2
    for i in 2...input[0] {
        size1074 *= 2
    }
    dfs1074(x: 0, y: 0, size: size1074)
    print(sum1072)
}
