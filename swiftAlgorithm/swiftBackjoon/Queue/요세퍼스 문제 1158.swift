//
//  요세퍼스 문제 1158.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

//
//import Foundation
//
//func solution1158() {
//    
//    class Queue<T: Equatable> {
//        var enqueue: [T]
//        var dequeue: [T] = []
//        
//        var count: Int { return enqueue.count + dequeue.count }
//        
//        var isEmpty: Bool { return enqueue.isEmpty && dequeue.isEmpty }
//        
//        var first: T? {
//            if dequeue.isEmpty { return enqueue.first }
//            else { return dequeue.last }
//        }
//        
//        var last: T? {
//            if enqueue.isEmpty {
//                return dequeue.first
//            } else {
//                return enqueue.last
//            }
//        }
//        
//        init(_ queue: [T]) {
//            enqueue = queue
//        }
//        
//        func push(_ n: T) {
//            enqueue.append(n)
//        }
//        
//        func pop() -> T? {
//            if dequeue.isEmpty {
//                dequeue = enqueue.reversed()
//                enqueue.removeAll()
//            }
//            return dequeue.popLast()
//        }
//        
//        func removeAll() {
//            enqueue.removeAll()
//            dequeue.removeAll()
//        }
//        
//        func contains(_ n: T) -> Bool {
//            return enqueue.contains(n) || dequeue.contains(n)
//        }
//
//    }
//
//    let input = readLine()!.split(separator: " ").map{ Int($0)! }
//
//    var queue = Queue<Int>([])
//
//    for i in 1 ... input[0] {
//        queue.push(i)
//    }
//    
//    var index = 1
//    var answer = "<"
//    while queue.count > 0 {
//        let top = queue.pop()!
//        
//        if index == input[1] {
//            answer += "\(top), "
//            index = 0
//        } else {
//            queue.push(top)
//        }
//        
//        index += 1
//    }
//    
//    answer.removeLast()
//    answer.removeLast()
//    answer += ">"
//    
//    print(answer)
//}
