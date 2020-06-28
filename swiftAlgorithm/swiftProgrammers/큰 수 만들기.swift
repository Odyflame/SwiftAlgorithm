//
//  큰 수 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/18.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//10은 도대체가 시간초과때문에 되지를 않는다
func solution1(_ number:String, _ k:Int) -> String {
    
    var answer = ""
    var sArray = Array(number)
    
    var check = k
    while check > 0  {
        var maxChar = "9"
        var index = sArray.count
        
        for i in 0..<sArray.count {
            if maxChar >= String(sArray[i]) {
                maxChar = String(sArray[i])
            }
            else {
                index = i
                break
            }
        }
        
        sArray.remove(at: index - 1)
        check -= 1
    }
    answer = String(sArray)
    
    return answer
}
