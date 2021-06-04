//
//  외벽 점검.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/12.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//    
//    var castle = [Int]()
//    weak.forEach {
//        castle.append($0)
//    }
//    weak.forEach {
//        castle.append($0 + n)
//    }
//    
//    var sortedDist = dist.sorted(by: > )
//    var answer = 999999999
//    var visit = [Bool](repeating: false, count: n + n)
//    
//    func checkCastle(sortDist: [Int]) {
//        
//        for i in 0 ..< weak.count {
//            var start = castle[i] // 시작 시점
//            var finish = castle[i + weak.count - 1] // 종료 완료 시점
//            for j in 0 ..< sortDist.count {
//                start += sortDist[j]
//                
//                if start >= finish {
//                    answer = min(answer, j + 1)
//                    break
//                }
//                
//                // 다음 검사 시작저점 구하기
//                for k in i ..< castle.count {
//                    if start < castle[k] {
//                        start = castle[k]
//                        break
//                    }
//                }
//            }
//        }
//        
//    }
//    
//    func DFS(depth: Int, srr: [Int]) {
//        if depth == sortedDist.count {
//            print("gkgk:\(srr)")
//            
//            checkCastle(sortDist: srr)
//            
//        } else {
//            for i in 0 ..< sortedDist.count {
//                
//                if !visit[i] {
//                    visit[i] = true
//                    var temp = srr
//                    temp.append(sortedDist[i])
//                    DFS(depth: depth + 1, srr: temp)
//                    visit[i] = false
//
//                }
//                            
//            }
//        }
//    }
//    
//    print(sortedDist )
//    DFS(depth: 0, srr: [])
//    
//    if answer == 999999999 {
//        return -1
//    }
//    return answer
//}
