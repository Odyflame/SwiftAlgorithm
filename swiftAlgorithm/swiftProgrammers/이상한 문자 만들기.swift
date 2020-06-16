//
//  이상한 문자 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    
    var srr = s.components(separatedBy: " ")
    var answer:String = ""
    
    for word in srr {
        
        var sArray = Array(word)
        for i in 0..<sArray.count {
            if i % 2 == 0 {
                answer += String(sArray[i]).uppercased()
            } else {
                answer += String(sArray[i]).lowercased()
            }
        }
        
        answer += " "
    }
    
    answer.removeLast()
    
    return answer
}
