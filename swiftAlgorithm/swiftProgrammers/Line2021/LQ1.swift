//
//  LQ1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ boxes:[[Int]]) -> Int {
//    
//    var dic = [Int: Int]()
//    
//    for box in boxes {
//        
//        if let cnt = dic[box[0]] {
//            dic[box[0]] = cnt + 1
//        } else {
//            dic[box[0]] = 1
//        }
//        
//        if let cnt = dic[box[1]] {
//            dic[box[1]] = cnt + 1
//        } else {
//            dic[box[1]] = 1
//        }
//    }
//    
//    var answer = 0
//    
//    for i in dic {
//        if i.value % 2 != 0 {
//            answer += 1
//        }
//    }
//    
//    return answer / 2
//}
