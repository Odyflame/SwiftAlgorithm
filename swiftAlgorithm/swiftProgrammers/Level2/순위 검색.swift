//
//  순위 검색.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/08.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//    
//    var answer = [Int]()
//    
//    var candidates = [String: [Int]]()
//
//    func dfs(index: Int, srr: inout [String] ,sum: String) {
//        if index == 4 {
//            if candidates[sum] == nil {
//                candidates[sum] = [Int(srr[4])!]
//            } else {
//                candidates[sum]?.append(Int(srr[4])!)
//            }
//            return
//        }
//        
//        dfs(index: index + 1, srr: &srr, sum: sum + srr[index])
//        dfs(index: index + 1, srr: &srr, sum: sum + "-")
//    }
//    
//    for index in 0..<info.count {
//        var information = info[index].split(separator: " ").map { String($0) }
//        dfs(index: 0, srr: &information, sum: "")
//    }
//    
//    var querys = [[String]](repeating: [String](), count: info.count)
//    for index in 0..<query.count {
//        let quer = query[index].split(separator: " ").map { String($0)}.filter { $0 != "and" }
//        let finalQuery = quer[0] + quer[1] + quer[2] + quer[3]
//        let score = Int(quer[4])
// 
//        if candidates[finalQuery] == nil {
//            answer.append(0)
//        } else {
//            //150이상인 놈들을 모두 가져오는것
//            let finalScore = candidates[finalQuery]?.sorted().filter { $0 > score! }.count
//            answer.append(finalScore!)
//        }
//    }
//    
//    return answer
//}
