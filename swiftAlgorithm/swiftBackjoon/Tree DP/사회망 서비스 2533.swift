//
//  트리에서의 다이나믹 프로그래밍 2533.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/23.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

extension String {
    static let zero = Character("0").asciiValue!
    func parse() -> [Int] {
        var answer: [Int] = []
        var temp = 0

        for c in self {
            if c == " " {
                answer.append(temp)
                temp = 0
                continue
            }

            temp *= 10
            temp += Int(c.asciiValue! - Self.zero)
        }

        answer.append(temp)
        return answer
    }
}

func solution2533() {

    var N = Int(readLine()!)!
    var nodes = [[Int]](repeating: [Int](), count: N + 1)
    var dp = [[Int]](repeating: [Int](repeating: -1, count: 2), count: N + 1)
    var nodes2 = [[Int]](repeating: [Int](), count: N + 1)
    
    for i in 0 ..< N - 1 {
        var temp = readLine()!.parse()
        nodes[temp[0]].append(temp[1])
        nodes[temp[1]].append(temp[0])
    }
    
    func DFS(depth: Int, adapter: Bool) -> Int {

        if nodes2[depth].isEmpty {
            if adapter { return 1 }
            else { return 0 }
        }

        if adapter && dp[depth][1] != -1 {
            return dp[depth][1]
        } else if !adapter && dp[depth][0] != -1 {
            return dp[depth][0]
        }
        
        if adapter {
            dp[depth][1] = 1
            for node in nodes2[depth] {
                dp[depth][1] += min(DFS(depth: node, adapter: false), DFS(depth: node, adapter: true) )
            }
        } else {
            dp[depth][0] = 0
            for node in nodes2[depth] {
                dp[depth][0] += DFS(depth: node, adapter: true)
            }
        }

        if adapter {
            return dp[depth][1]
        } else {
            return dp[depth][0]
        }
        
    }
    
    func makeTree(root: Int, parent: Int) {
        if parent != 0 {
            nodes2[parent].append(root)
        }
        
        for next in nodes[root] {
            if next == parent {
                continue
            }
            makeTree(root: next, parent: root)
        }
    }
    
    makeTree(root: 1, parent: 0)
    var ans = DFS(depth: 1, adapter: true)
    var ans2 = DFS(depth: 1, adapter: false)
    
    print( min( ans, ans2 ) )
}
