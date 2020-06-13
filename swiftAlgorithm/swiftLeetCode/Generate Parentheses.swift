//
//  Generate Parentheses.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func dfs22(sum: String, left: Int, right: Int, answer: inout Set<String>) {
    
    if left == 0 && right == 0 {
        answer.insert(sum)
    }
    
    if left != 0 {
        dfs22(sum: sum + "(" , left: left - 1, right: right, answer: &answer)
    }
    if right != 0 && left < right {
        dfs22(sum: sum + ")", left: left, right: right - 1, answer: &answer)
    }
}

func generateParenthesis(_ n: Int) -> [String] {
    
    var answer = Set<String>()
    dfs22(sum: "", left: n, right: n, answer: &answer)
    var result = answer.sorted()
    
    return result
}
