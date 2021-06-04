//
//  물류 센터.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func groomSolution() {
    let n = Int(readLine()!)!
    var nodes = [[Int]](repeating: [Int](repeating: 10000000, count: n), count: n)
    
    for _ in 0 ..< n - 1 {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        nodes[input[0]][input[1]] = input[2]
        nodes[input[1]][input[0]] = input[2]
    }
    
    for k in 0 ..< n {
        for i in 0 ..< n {
            for j in 0 ..< n {
                if i == j { continue }
                nodes[i][j] = min(nodes[i][j], nodes[i][k] + nodes[k][j])
            }
        }
    }
    
    var answer = 10000000
    for i in 0 ..< n {
        var sum = 0
        for j in 0 ..< n {
            if i == j { continue }
            sum += nodes[i][j]
        }
        answer = min(answer, sum)
    }
    
    print(answer)
}
