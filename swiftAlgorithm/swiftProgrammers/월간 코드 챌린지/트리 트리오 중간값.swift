//
//  트리 트리오 중간값.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/02.
//  Copyright © 2020 odyflame. All rights reserved.
//


//import Foundation
//
//func solution(_ n:Int, _ edges:[[Int]]) -> Int {
//
//    var nodes = [[Int]](repeating: [Int](), count: n + 1)
//    var visit = [Bool](repeating: false, count: n + 1)
//    for edge in edges {
//
//        nodes[edge[0]].append(edge[1])
//        nodes[edge[1]].append(edge[0])
//
//    }
//
//    let values = Array(repeating : 0, count : n+1)
//    var valueList = [values,values,values,values]
//
//    if n == 3 {
//        return 1
//    }
//
//    func DFS(depth: Int, idx: Int, except: Int) -> (Int, Int) {
//        var answer = (0, 0)
//        visit[depth] = true
//
//        var flag = false
//        var queue = [(Int, Int)]()
//        queue.append((depth, 0))
//
//        while !queue.isEmpty && !flag {
//            var temp = queue.removeLast()
//
//            for node in nodes[temp.0] {
//
//                if !visit[node] {
//
//                    visit[node] = true
//                    queue.append((node, temp.1 + 1))
//
//                    valueList[idx][node] = max(valueList[idx][node], temp.1+1)
//
//                    if answer.1 < temp.1 + 1 && node != except{
//                        answer.1 = temp.1 + 1
//                        answer.0 = node
//                    }
//
//                }
//            }
//
//        }
//
//        return answer
//    }
//
//
//    var ans1 = DFS(depth: 1, idx: 0, except: -1) // 어디서 가장 멀리 떨어진 노드 4
//    visit = [Bool](repeating: false, count: n + 1)
//    visit[ans1.0] = true
//
//    var ans2 = DFS(depth: ans1.0, idx: 1, except: -1) // ans1.에서 가장 멀리 떨어진 노드 1, 3
//    visit = [Bool](repeating: false, count: n + 1)
//    visit[ans2.0] = true
//    visit[ans1.0] = true
//
//    var ans3 = DFS(depth: ans2.0, idx: 2, except: ans1.0) // ans2에서 가장 멀리 떨어진 노드 3, 2
//    visit = [Bool](repeating: false, count: n + 1)
//    visit[ans2.0] = true
//    visit[ans3.0] = true
//
//    var ans4 = DFS(depth: ans3.0, idx: 3, except: -1)// ans3에서 가장 멀리 떨어진 노드 4, 1
//
//    let answers3 = [valueList[1][ans2.0], valueList[2][ans3.0], valueList[3][ans1.0]]
//    let answer3 = answers3.sorted()[1]
//
//    return answer3
//
//    let answers = [ans2.1, ans3.1, ans4.1]
//
//
//    let answer2 = answers.sorted()[1]
//    return answer2
//}
