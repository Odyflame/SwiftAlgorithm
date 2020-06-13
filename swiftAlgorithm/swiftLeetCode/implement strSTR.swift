//
//  implement strSTR.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    
    var sArray = Array(haystack)
    var nArray = Array(needle)
    
    if haystack == "" && needle == "" {
        return 0
    }
    
    if (haystack == "" && needle != "") || ( haystack.count < needle.count ) {
        return -1
    }
    
    for i in 0 ..< sArray.count - nArray.count + 1 {
        
        var flag = true
        
        for j in 0 ..< nArray.count {
            if sArray[i+j] != nArray[j] {
                flag = false
                break
            }
        }
        
        if flag == true {
            return i
        }
    }
    
    return -1
}
