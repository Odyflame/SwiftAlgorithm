//
//  짝수 행 세기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ a:[[Int]]) -> Int {
    
    var answer = [[Int]]()
    var ans = [Int](repeating: 0, count: a.count)
    
    func DFS(depth: Int, check: Int, sum: Int, arr: [Int]) {
        
        if check == sum {
            answer.append(arr)
            return
        }
        if depth == a.count {
            return
        }
        
        var arr = arr
        DFS(depth: depth + 1, check: check, sum: sum, arr: arr)
        arr[depth] = 1
        DFS(depth: depth + 1, check: check, sum: sum + 1, arr: arr)
        
    }
    
    
    for j in 0 ..< a[0].count {
        var sum = 0
        for i in 0 ..< a.count {
            sum += a[j][i]
        }
        
        ans = [Int](repeating: 0, count: a.count)
        DFS(depth: 0, check: sum, sum: 0, arr: ans)
        
    }
    
    
    return -1
}
