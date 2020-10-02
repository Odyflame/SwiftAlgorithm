//
//  최소 힙 1927.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//메모리 초과 발생. 이 PriorityQueue는 쓰지 않는게 좋다.
//func solution1927() {
//    var N = readLine().map { Int($0)! }!
//
//    var queue = PriorityQueue<Int>(sort: <)
//
//    for i in 0..<N {
//        var X = readLine().map { Int($0)! }!
//
//        if X == 0 {
//            if queue.isEmpty {
//                print(0)
//            } else {
//                print(queue.dequeue())
//            }
//        } else {
//            queue.enqueue(X)
//        }
//    }
//}

//chh0107님의 코드
//extension Array where Element == Int {
//    mutating func binaryInsert(_ e: Int) {
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
//                right = mid - 1
//            } else {
//                left = mid + 1
//            }
//        }
//
//        self.insert(e, at: left)
//    }
//}
//
//func soluiton1927() {
//    var N = readLine().map { Int($0)! }!
//    var queue = [Int]()
//
//    for i in 0 ..< N {
//        let num = Int(readLine()!)!
//
//        if num == 0 {
//            if queue.isEmpty {
//                print(0)
//            }else {
//                print(queue.removeLast())
//            }
//        } else {
//            queue.binaryInsert(num)
//        }
//    }
//}
