//
//  비밀지도.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution4(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    arr1.first
    
    func convert(_ arr: [Int]) -> [String] {
        var temp:[String] = []
        
        for i in arr {
            var j = i
            var tempAns = ""
            while j > 0 {
                tempAns = "\(j%2)" + tempAns
                j/=2
            }
            
            while tempAns.count < n {
                tempAns = "0" + tempAns
            }
            
            temp.append(tempAns)
        }
        return temp
    }
    
    var srr1 = Array(convert(arr1))
    var srr2 = Array(convert(arr2))
    
    for i in 0 ..< n {
        var ans = ""
        for j in 0 ..< n {
            
            if Array(srr1[i])[j] == "0" && Array(srr2[i])[j] == "0" {
                  ans += " "
            }else {
                ans += "#"
            }
        }
        answer.append(ans)
    }
    
    return answer
}
