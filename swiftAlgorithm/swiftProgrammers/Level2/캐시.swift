//
//  캐시.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
//
//    var stack = [String]()
//    var answer = 0
//
//    var cities = cities.map { $0.uppercased() }
//
//    if cacheSize < 0 {
//        return cacheSize * 5
//    }
//    for city in cities {
//        if stack.contains(city) {
//            answer += 1
//        } else {
//            if stack.count < cacheSize {
//                stack.append(city)
//                answer += 5
//            } else {
//                stack.removeFirst()
//                stack.append(city)
//                answer += 5
//            }
//        }
//    }
//
//
//    return answer
//}
