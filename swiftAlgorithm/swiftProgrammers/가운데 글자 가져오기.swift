//
//  가운데 글자 가져오기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/18.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1(_ s:String) -> String {
    var answer = ""
    
    if s.count % 2 == 0 {
      
        let a = s.index(s.startIndex, offsetBy: s.count / 2)
        let b = s.index(s.startIndex, offsetBy: s.count / 2 + 1)
        
        return String(s[a]) + String(s[b])
        
    } else {
       let a = s.index(s.startIndex, offsetBy: s.count / 2)
        return String(s[a])
    }
    
    
    
    return answer
}
