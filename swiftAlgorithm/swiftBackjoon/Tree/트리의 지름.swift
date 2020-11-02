//
//  트리의 지름.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/21.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1967(){
//    
//    let N = Int(readLine()!)!
//    var nodes = [[(Int, Int)]](repeating: [(Int, Int)](), count: N + 1)
//    var visit = [Bool](repeating: false, count: N + 1)
//    
//    for i in 0 ..< N {
//        let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//        
//        nodes[temp[0]].append( (temp[1], temp[2]) )
//        nodes[temp[1]].append((temp[0], temp[2]))
//    }
//    
//    var answer = (0, 0)
//    func DFS(depth: Int, sum: Int) -> (Int, Int) {
//        
//        visit[depth] = true
//        
//        for node in nodes[depth] {
//            DFS(depth: node.0, sum: sum + node.1)
//        }
//        
//        if sum > answer.1 {
//            answer.1 = sum
//            answer.0 = depth
//        }
//        
//        return answer
//    }
//    
//    var startPos = DFS(depth: 1, sum: 0)
//    visit = [Bool](repeating: false, count: N + 1)
//    var endPos = DFS(depth: startPos.0, sum: 0)
//    
//    
//    
//}

//func solution1967() {
//
//    struct Node {
//        var node: [(Int, Int)] // endpos and cost
//    }
//
//    let n = Int(readLine()!)!
//    var nodes = [Node](repeating: Node(node: []), count: n + 1)
//    var visit = [Bool](repeating: false, count: n + 1)
//
//    for i in 0 ..< n - 1 {
//        let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//        if nodes[temp[0]].node.isEmpty {
//            nodes[temp[0]] = Node(node: [ (temp[1], temp[2])] )
//        } else {
//            nodes[temp[0]].node.append((temp[1], temp[2] ))
//        }
//        if nodes[temp[1]].node.isEmpty {
//            nodes[temp[1]] = Node(node: [ (temp[0], temp[2])] )
//        } else {
//            nodes[temp[1]].node.append((temp[0], temp[2] ))
//        }
//
//    }
//
//    var answer = (0, 0)
//
//    func DFS(depth: Int, sum: Int) -> (Int, Int){
//
//        visit[depth] = true
//        for node in nodes[depth].node {
//            if !visit[node.0] {
//                var temp = DFS(depth: node.0, sum: sum + node.1)
//            }
//        }
//
//        if sum > answer.1 {
//            answer.1 = sum
//            answer.0 = depth
//        }
//
//        return answer
//    }
//
//    var startPos = DFS(depth: 1, sum: 0)
//    visit = [Bool](repeating: false, count: n + 1)
//    var endPos = DFS(depth: startPos.0, sum: 0)
//
//    print(endPos.1)
//}
