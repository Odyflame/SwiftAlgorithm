//
//  Buzzvil_1Q6.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/15.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation


// Complete the braces function below.

struct Node {
    var child: [Int] = []
}

func solution112333(graphNode: Int, graphFrom: [Int], praphTo: [Int]) {
    
    var answer = 0
    var nodes = [Node](repeating: Node(), count: graphNode + 1)
    var temp = Set<Int>()
    
    for i in 0 ..< graphFrom.count {
        nodes[ graphFrom[i] ].child.append( praphTo[i] )
        nodes[ praphTo[i] ].child.append( graphFrom[i] )
    }
    
    var visit = [Bool](repeating: false, count: graphNode + 1)
    
    func DFS(index: Int) {
    
        visit[index] = true
        temp.insert(index)
        
        for node in nodes[index].child {
            if !visit[node] {
                DFS(index: node)
            }
        }
    }
    
    for i in 1 ... graphNode {
        if !nodes[i].child.isEmpty && !visit[i] {
            DFS(index: i)
            answer += Int(ceil(sqrt(Double(temp.count))))
            print("tlqkf \(temp) \(answer)")
            temp = Set<Int>()
        } else if nodes[i].child.isEmpty && !visit[i] {
            answer += 1
        }
    }
    
    print(answer)
}
