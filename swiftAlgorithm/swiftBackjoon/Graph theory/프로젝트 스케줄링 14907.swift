//
//  프로젝트 스케줄링 14907.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution14907() {
    
    var startPos = ""
    var startSum = 0
    struct Node {
        //var sum: Int
        var children = [(String, Int)]()
    }
    
    var nodes = [String: Node]()
    var checker = 26
    while true {
        
        guard let input = readLine() else {
            break
        }

        var temp = input.split(separator: " ").map { String($0) }
        
        if temp.count == 2{
            
            startPos = temp[0]
            startSum = Int(temp[1])!
            
        } else {
            let tempSrr = temp[2].map { String($0) }
            
            for srr in tempSrr {
                
                if nodes[srr] != nil {
                    nodes[srr]?.children.append(( temp[0], Int(temp[1])! ) )
                } else {
                    
                    nodes[srr] = Node( children: [ (temp[0], Int(temp[1])!) ])
                }
                
            }
            
        }
    }
    
    var queue = [(String)]()
    queue.append((startPos))
    
    var cnt = 0
    var dp = [String: Int]()
    dp[startPos] = startSum
    
    var finalAns = 0
    while cnt < queue.count {
        var temp = queue[cnt]
        cnt += 1
        
        if nodes[temp] == nil {
            finalAns = max(finalAns, dp[temp]!)
            break
        }
        for node in nodes[temp]!.children {
            if dp[node.0] == nil {
                dp[node.0] = node.1 + dp[temp]!
            }else {
                dp[node.0] = max( node.1 + dp[temp]!, dp[node.0]!)
            }
            queue.append(node.0)
        }
    }
    
    print(finalAns)
}
