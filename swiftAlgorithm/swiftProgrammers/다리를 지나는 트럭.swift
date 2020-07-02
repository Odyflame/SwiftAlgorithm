//
//  다리를 지나는 트럭.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//
//    var answer = 0
//
//    if truck_weights.isEmpty {
//        return answer
//    }
//
//    var idx = 0
//    var sum = 0
//
//    var truck_weights = truck_weights
//    var qu = [(Int, Int)]()
//
//    while !truck_weights.isEmpty || !qu.isEmpty {
//
//        var i = qu.count
//
//        while i > 0 {
//            var temp = qu.removeFirst()
//
//            if temp.1 + 1 <= bridge_length {
//                qu.append(( temp.0, temp.1 + 1 ))
//            } else {
//                sum -= temp.0
//            }
//
//            i -= 1
//        }
//
//        if !truck_weights.isEmpty && sum + truck_weights.first! <= weight {
//            sum += truck_weights.first!
//            qu.append( (truck_weights.removeFirst(), 1 ))
//        }
//
//        answer += 1
//    }
//
//    return answer
//}
