//
//  Tree 1068.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1068() {

    let N = Int(readLine()!)!

    struct node {
        var value: Int = -1
        var child: [Int] = []
        var parent: [Int] = []
    }

    var nodes = [node](repeating: node(), count: N)
    var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }

    var startpos = -1
    for i in 0 ..< temp.count {

        if temp[i] == -1 {
            startpos = i
            nodes[i].value = i
        } else {
            nodes[i].value = i
            nodes[temp[i]].child.append(i)
            nodes[i].parent.append(temp[i])
        }
    }

    var Number = Int(readLine()!)!

    nodes[Number].value = -1
    nodes[Number].child = []
    for parent in nodes[Number].parent {
        nodes[parent].child = nodes[parent].child.filter { $0 != Number }
    }

    func DFS(depth: Int, sum: Int) -> Int{
        var answer = 0

        if nodes[depth].value == -1 {
            return sum
        } else if nodes[depth].child.isEmpty {
            return sum + 1
        }

        let user = sqrt(Double(sum))
        
        for node in nodes[depth].child {
            answer += DFS(depth: node, sum: sum)
        }

        return answer
    }


    print(DFS(depth: startpos, sum: 0))

}
