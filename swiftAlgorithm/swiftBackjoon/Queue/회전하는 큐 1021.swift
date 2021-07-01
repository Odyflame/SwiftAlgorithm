//
//  회전하는 큐 1021.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//struct Deque<T: Comparable> {
//    var array = [T?]()
//    var index = 0
//    var originalQueueSize = 50
//
//    public init(_ value: [T]) {
//        self.array = value
//    }
//
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    public mutating func pushBack(value: T?) {
//        array.append(value)
//    }
//
//    public mutating func popFront() -> T? {
//        var top = array[index]
//        index += 1
//
//        if index >= originalQueueSize {
//            array.removeFirst(index)
//            index -= originalQueueSize
//        }
//
//        return top
//    }
//
//    public mutating func moveLeft() {
//        if index == 0 {
//            array = [T?](repeating: nil, count: originalQueueSize) + array
//        }
//        index += originalQueueSize
//
//        var top = array.removeLast()
//        index -= 1
//        array[index] = top
//    }
//
//    public mutating func moveRight() {
//        var top = popFront()
//        pushBack(value: top)
//    }
//}
//
//func solution1021() {
//    let NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var input = readLine()!.split(separator: " ").map { Int($0)! }
//
//
//}
