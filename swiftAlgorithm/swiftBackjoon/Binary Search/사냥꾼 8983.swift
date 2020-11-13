//
//  사냥꾼 8983.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution8983() {
//
//    var NML = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var launcher = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
//
//    struct point: Hashable {
//        var x: Int
//        var y: Int
//    }
//
//    var MySet = Set<point>()
//
//    for i in 0 ..< NML[1] {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//        var left = 0
//        var right = launcher.count - 1
//        var mid = (left + right) / 2
//
//        while left <= right {
//
//            if abs(launcher[mid] - temp[0]) + temp[1] <= NML[2] {
//                MySet.insert( point(x: temp[0], y: temp[1]))
//                break
//            } else {
//                if launcher[mid] < temp[0] {
//                    left = mid + 1
//                }else {
//                    right = mid - 1
//                }
//            }
//
//            mid = (left + right ) / 2
//        }
//    }
//
//    print(MySet.count)
//}
