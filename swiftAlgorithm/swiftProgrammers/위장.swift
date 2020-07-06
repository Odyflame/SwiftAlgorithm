//
//  위장.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/28.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//김승리
//func solution(_ clothes:[[String]]) -> Int {
//    let types = clothes.compactMap({ $0.last })
//    let typeSet = Set(types)
//    let categories = Array(typeSet)
//
//    let counts = categories.map({ category in
//        return clothes.filter({ $0.last == category }).count + 1
//    })
//
//    let user = counts.reduce(1, { $0 * $1 }) - 1
//
//    return user
//}

//이동건
//func solution(_ clothes: [[String]]) -> Int {
//
//    var dict: [String: Int] = [:]
//    clothes.forEach {
//
//        guard let count = dict[$0[1]] else {
//            dict[$0[1]] = 2
//            return
//        }
//
//        dict[$0[1]] = count + 1
//    }
//
//    var count: Int = 1
//
//    for value in dict.values {
//        count *= value
//    }
//
//    return count - 1
//
//}

//func solution1(_ n:Int) -> Int {
//
//    var answer = 0
//
//    var check = [Bool](repeating: false, count: 1000001)
//
//    for i in 2 ... 1000000 {
//        if !check[i] {
//            for j in stride(from: i * 2, to: 1000000, by: i) {
//                check[j] = true
//            }
//        }
//    }
//
//    for i in 2 ... n {
//        if !check[i] {
//            answer += 1
//        }
//    }
//
//    return answer
//}
