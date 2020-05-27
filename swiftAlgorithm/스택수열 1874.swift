//
//  스택수열 1874.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/27.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


func solution1874() -> String {
    var answer : String = ""
    
    var popStack: [Int] = []
    var stack: [Int] = []
    var orderStack: [Int] = []
    
    let n = Int(readLine()!)!
    
    for i in 1...n {
        stack.append(i)
    }
    
    for _ in 0..<n {
        let order = Int(readLine()!)!
        orderStack.append(order)
    }
    
    for order in orderStack {
        
        if !stack.isEmpty && order >= stack.first! {
            while !stack.isEmpty {
                answer += "+"
                popStack.append(stack.first!)
                if order == stack.first {
                    popStack.popLast()
                    answer += "-"
                    stack.remove(at: 0)
                    break
                }; stack.remove(at: 0)
            }
        } else if !popStack.isEmpty && order != popStack.last! {
            answer = "NO"
            print("NO")
            return answer
            
        } else {
            answer += "-"
            popStack.popLast()
        }
        
    }
    
    answer.enumerated().map {
        print("\($0.element)")
    }
    return answer
}
