//
//  섬 연결하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/28.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    
    func desc(a : [Int], b: [Int]) -> Bool{
        return a[2] < b[2]
    }
    
    var costs = costs
    costs.sort(by: desc)
    
    var parent: [Int] = [Int](repeating: 0, count: 150)
    
    var answer = 0
    
    func find(a: Int) -> Int {
        if parent[a] == a {
            return a
        } else {
            return find(a: parent[a])
        }
    }
    
    func union(a: Int, b: Int) {
        var x = find(a: a)
        var y = find(a: b)
        
        parent[y] = a
    }
    
    for i in 0 ..< costs.count {
        if find(a: costs[i][1]) != find(a: costs[i][0]) {
            union(a: costs[i][1], b: costs[i][0])
            answer += costs[i][2]
        }
    }
    
    return answer
}
