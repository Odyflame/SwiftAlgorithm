//
//  크게 만들기 2812.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution2812() {
    var NK = readLine()!.split(separator: " ").map { Int($0)! }
    
    var n = readLine()!
    var temp = Array(n)
    
    var stack = ""
    
    for i in temp {
        while NK[1] > 0 && !stack.isEmpty && stack.last! < i {
            stack.removeLast()
            NK[1] -= 1
        }
        stack += String(i)
    }
    
    var index = stack.index(stack.endIndex, offsetBy: -NK[1])
    print(String(stack[..<index]))
}
