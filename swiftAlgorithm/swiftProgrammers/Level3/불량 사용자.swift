//
//  불량 사용자.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//
//    func findId(banID: String) -> [String] {
//        var banID = Array(banID)
//        var arr = [String]()
//
//        for user in user_id {
//
//            if user.count != banID.count {
//                continue
//            }
//
//            var flag = true
//            var user = Array(user)
//
//            for i in 0 ..< user.count {
//                if banID[i] != "*" && banID[i] != user[i] {
//                    flag = false
//                    break
//                }
//            }
//            if flag {
//                arr.append(String(user))
//            }
//        }
//
//        return arr
//    }
//
//    var answer = Set<Set<String>>()
//    var idGroups = [[String]]()
//    for id in banned_id {
//        idGroups.append(findId(banID: id))
//    }
//
//    func DFS(depth: Int, sum: Set<String>) {
//        if depth == banned_id.count {
//            if sum.count == depth {
//                answer.insert(sum)
//            }
//            return
//        }
//
//        for i in 0 ..< idGroups[depth].count {
//            var tempSum = sum
//            tempSum.insert(idGroups[depth][i])
//            DFS(depth: depth + 1, sum: tempSum)
//        }
//    }
//
//    DFS(depth: 0, sum: Set<String>())
//
//    return answer.count
//}
