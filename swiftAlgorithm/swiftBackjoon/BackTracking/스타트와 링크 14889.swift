//
//  스타트와 링크 14889.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution14889() {
//    let n = Int(readLine()!)!
//    var arr = [[Int]]()
//    var visit = [Bool](repeating: false, count: n)
//    var ans = [Int]()
//    
//    for i in 0 ..< n {
//        var input = readLine()!.split(separator: " ").map { Int($0)! }
//        arr.append(input)
//    }
//    
//    var answer = 99999999
//    
//    func DFS(depth: Int, idx: Int) {
//        if depth == n / 2 {
//            
//            var sum1 = 0
//            var sum2 = 0
//            for i in 0 ..< n {
//                for j in 0 ..< n {
//                    if i == j { continue }
//                    if visit[i] && visit[j] {
//                        sum1 += arr[i][j]
//                        sum1 += arr[j][i]
//                    } else if !visit[i] && !visit[j] {
//                        sum2 += arr[i][j]
//                        sum2 += arr[j][i]
//                    }
//                }
//            }
//            
//            var temp = abs(sum1 - sum2) / 2
//            answer = min(answer, temp)
//            return
//        }
//        
//        for i in idx ..< n {
//            if !visit[i] {
//                visit[i] = true
//                DFS(depth: depth + 1, idx: i)
//                visit[i] = false
//            }
//        }
//    }
//    
//    DFS(depth: 0, idx: 0)
//    
//    print(answer)
//}
