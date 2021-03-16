//
//  946. Validate Stack Sequence.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/09.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
    
    var pushed = pushed
    var popped = popped
    var stack = [Int]()
    
    var answer = true
    
    while !popped.isEmpty || !pushed.isEmpty {
        // pop이나 push 중 하나가 남아 있을 경우 계속
        
        if !pushed.isEmpty {
            var temp = pushed.removeFirst()
            stack.append(temp)
            
            while !stack.isEmpty && popped.first == stack.last {
                // stack이 맞는 경우
                popped.removeFirst()
                stack.removeLast()
            }
        } else {
            var pop = popped.removeFirst()
            
            if pop == stack.last {
                stack.removeLast()
            } else {
                answer = false
                break
            }
        }
        
        
    }
    
    return answer
}
