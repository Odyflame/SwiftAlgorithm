//
//  Group Anagrams.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var answer = [[String]]()
    var dic = [String: [String]]()
    
    for i in 0..<strs.count {
        var temp = String(strs[i].sorted())
        
        if let _ = dic[temp] {
            dic[temp]?.append(strs[i])
        } else {
            dic[temp] = [strs[i]]
        }
    }
    
    for value in dic.values {
        answer.append(value)
    }
    
    return answer
}
