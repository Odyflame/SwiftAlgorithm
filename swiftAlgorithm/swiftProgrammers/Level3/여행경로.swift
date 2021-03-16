//
//  여행경로.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

//func solution(_ tickets:[[String]]) -> [String] {
//
//    var answer = [String]()
//
//    var path = [String]() //
//    var visited = Array(repeating: false, count: tickets.count) // 방문여부
//    let arr = tickets.sorted(by: { $0[1] < $1[1] } )
//
//    func dfs(_ depth: Int,
//             _ airport: String,
//             _ answer: inout [String]
//             ) {
//
//        path.append(airport)
//
//        if depth == tickets.count { answer = path; return }
//
//        for i in 0..<tickets.count where answer.isEmpty {
//            let information: (start: String, end: String) = (tickets[i].first!, tickets[i].last!)
//
//            if visited[i] == false && airport == information.start {
//                visited[i] = true
//                dfs(depth + 1, information.end, &answer)
//                visited[i] = false
//            }
//        }
//
//        path.removeLast()
//    }
//
//    dfs(0, "ICN", &answer)
//
//    return answer
//}

