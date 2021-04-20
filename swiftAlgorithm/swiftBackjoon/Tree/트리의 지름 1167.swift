//
//  트리의 지름 1167.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution1167() {
    let N = Int(readLine()!)!
    
    struct Node {
        var node: [(Int, Int)]
    }
    
    var tree = [Node](repeating: Node(node: []), count: N + 1)
    
    for _ in 0 ..< N {
        var temp = readLine()!.split(separator: " ").map { Int($0)! }
        
        var tempNode = Node(node: [])
        for i in 1 ..< temp.count - 1 {
            if i % 2 == 1 {
                tempNode.node.append( (temp[i], temp[i + 1] ) )
            }
        }
        tree[temp[0]] = tempNode
    }
    
    
    var answer = (0, 0)
    
    var visit = [Bool](repeating: false, count: N + 1)
    
    func dfs(depth: Int, sum: Int) -> (Int, Int) {

        visit[depth] = true
        for i in tree[depth].node {
            if !visit[i.0] {
                dfs(depth: i.0, sum: sum + i.1)
            }
        }
        
        if sum > answer.1 {
            answer.1 = sum
            answer.0 = depth
        }
        
        return answer
    }
    
    
    var firstAns = dfs(depth: 1, sum: 0)
    visit = [Bool](repeating: false, count: N + 1)
    var secondAns = dfs(depth: firstAns.0, sum: 0)
    
    print(secondAns.1)
}
