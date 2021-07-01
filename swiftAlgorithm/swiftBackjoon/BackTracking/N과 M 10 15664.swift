//
//  N과 M 10 15664.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/29.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution15664() {
    var NM = readLine()!.split(separator: " ").map { Int($0)! }
    var inputs = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var visit = [Bool](repeating: false, count: 9)
    
    var ans = Set<String>()
    var tempAns = [Int]()
    
    func DFS(depth: Int, idx: Int) {
        if depth == NM[1] {
            
            ans.insert(tempAns.map { String($0)}.joined(separator: " ") )
            
            return
        }
        
        for index in idx ..< inputs.count {
            if !visit[index] {
                visit[index] = true
                tempAns.append(inputs[index])
                DFS(depth: depth + 1, idx: index)
                tempAns.removeLast()
                visit[index] = false
            }
        }
    }
    
    DFS(depth: 0, idx: 0)
    let sortedResult = ans.sorted(by: { $0.localizedStandardCompare($1) == .orderedAscending})
    for result in sortedResult {
        print(result)
    }
}
