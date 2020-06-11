//
//  Longest Common Prefix.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    
    var answer = ""
    
    if strs.count == 1 {
        return strs[0]
    } else if strs.count == 0 {
        return ""
    }
    
    var temp = strs.sorted { (A, B) -> Bool in
        return A.count < B.count
    }.first!
    
    while true {
        if temp == "" {
            break
        }
        
        var flag = true
        for member in strs {
            if !member.hasPrefix(temp) {
                flag = false
                break
            }
        }
        
        if !flag {
            temp.removeLast()
        } else {
            answer = temp
            break
        }
    }

    return answer
}
