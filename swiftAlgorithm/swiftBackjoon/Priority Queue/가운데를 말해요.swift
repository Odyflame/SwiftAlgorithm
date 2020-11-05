//
//  가운데를 말해요.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//extension Array where Element == Int {
//    mutating func binaryInsert(_ e : Int) {
//        guard !isEmpty else {
//            self.append(e)
//            return
//        }
//
//        var left = 0
//        var right = count - 1
//
//        while left <= right {
//            let mid = (left + right ) / 2
//
//            if self[mid] < e {
//                left = mid + 1
//            } else {
//                right = mid - 1
//            }
//        }
//
//        self.insert(e, at: left)
//    }
//}
//
//func solution1655() {
//    var N = Int(readLine()!)!
//    var arr = [Int]()
//
//    for i in 0 ..< N {
//        var temp = Int(readLine()!)!
//        arr.binaryInsert(temp)
//        print(arr [(arr.count - 1) / 2])
//    }
//
//    print(arr)
//}
