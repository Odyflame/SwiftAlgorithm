//
//  71. Simplify Path.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func simplifyPath(_ path: String) -> String {
    var answer = ""
    
    var path = path.split(separator: "/").map { String($0) }
    
    var stack = [String]()
    for i in path {
        
        if i == ".." {
            if !stack.isEmpty {
                stack.removeLast()
            } else {
                continue
            }
        } else if i == "." {
            continue
        } else {
            stack.append(i)
        }
        
    }
    
    stack.forEach { (value) in
        answer += "/" + value
    }
    
    if answer == "" {
        return "/"
    }
    
    return answer
}
