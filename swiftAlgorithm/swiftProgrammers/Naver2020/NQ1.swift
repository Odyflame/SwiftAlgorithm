//
//  Q1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/27.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n: Int, _ edges: [[Int]]) -> Int {
//    var answer = 0
//
//    var dp = [[Int]](repeating: [Int](), count: n)
//
//    for edge in edges {
//        dp[edge[0]].append(edge[1])
//    }
//
//    func DFS(depth: Int, start: Int, sum: Set<Int>) -> Int {
//
//        var answer = 9999999
//        if depth > n {
//            sum.count
//        }
//
//        if dp[start].count > 0 {
//            return answer
//        }
//
//        for i in 0 ..< dp[start].count {
//
//            //i 를 잠굴때 다른 녀석들은 DFS에 들어가있다.
//            for j in 0 ..< dp[start].count {
//                if dp[start][i] != dp[start][j] {
//                    var temp = sum
//                    temp.insert(dp[start][j])
//                    answer = min(DFS(depth: depth + 1, start: dp[start][j], sum: temp), answer)
//                }
//            }
//
//        }
//
//        return answer
//    }
//
//    answer = DFS(depth: 0, start: 0, sum: [0])
//
//    return answer
//}

//func solution( _ blocks: [[Int]]) -> [Int] {
//
//    func getBlock(_ n: Int, _ block: [Int], _ currentBlcok: [Int]) -> [Int] {
//        var tempAnswer = [Int](repeating: wrongAnswer, count: n)
//
//        tempAnswer[currentBlcok[0]] = currentBlcok[1]
//
//        while tempAnswer.contains(wrongAnswer) {
//
//            for i in 0 ..< n - 1 {
//                if tempAnswer[i] == wrongAnswer && tempAnswer[i + 1] == wrongAnswer {
//                    continue
//                } else if tempAnswer[i] == wrongAnswer {
//                    tempAnswer[i] = block[i] - tempAnswer[i + 1]
//                } else if tempAnswer[i + 1] == wrongAnswer {
//                    tempAnswer[i + 1] = block[i] - tempAnswer[i]
//                } else {
//                    continue
//                }
//            }
//
//        }
//
//        return tempAnswer
//    }
//
//    var wrongAnswer = 9999999
//
//    var finalAnswer = [Int]()
//    finalAnswer.append(blocks[0][1])
//    var tempAnswer = finalAnswer
//
//    for i in 1..<blocks.count {
//
//        var tempBlock = getBlock(i + 1, tempAnswer, blocks[i])
//        tempAnswer = tempBlock
//        finalAnswer = finalAnswer + tempBlock
//    }
//
//    return finalAnswer
//}
