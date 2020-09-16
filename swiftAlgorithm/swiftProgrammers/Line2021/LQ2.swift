//
//  LQ2.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ ball:[Int], _ order:[Int]) -> [Int] {
//    
//    var answer = [Int]()
//    var ball = ball
//    var stack = [Int]()
//    var order = order
//    
//    while !ball.isEmpty {
//        
//        var i = order.first ?? 0
//        
//        if !stack.isEmpty &&  stack.contains(ball.first!) {
//            answer.append(ball.first!)
//            
//            stack = stack.filter({
//                return $0 != ball.first
//            })
//
//            ball.removeFirst()
//        } else if !stack.isEmpty && stack.contains(ball.last!) {
//            answer.append(ball.last!)
//            stack = stack.filter({
//                return $0 != ball.last
//            })
//            ball.removeLast()
//        }
//        else if ball.first == i {
//            answer.append(ball.first!)
//            ball.removeFirst()
//            order.removeFirst()
//        } else if ball.last == i {
//            answer.append(ball.last!)
//            ball.removeLast()
//            order.removeFirst()
//        } else {
//            stack.append(i)
//            if !order.isEmpty {
//                order.removeFirst()
//            }
//        }
//    }
//    
//    return answer
//}
