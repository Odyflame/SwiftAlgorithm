//
//  LQ3.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ n:Int) -> [Int] {
//    
//    var answer = [Int]()
//    
//    var check = 99999
//    var ans: (Int, Int) = (0, 0)
//    
//    var num = String(n)
//    
//    func DFS(depth: Int, num: String) {
//        
//        if num.count == 1 {
//            if check > depth {
//                check = depth
//                ans = (depth, Int(num)!)
//            }
//            return
//        }
//        
//        for i in 1 ..< num.count {
//            var firstIndex = num.index(num.startIndex, offsetBy: 0)
//            var lastIndex = num.index(num.startIndex, offsetBy: i)
//            
//            var num1 = "\(num[firstIndex..<lastIndex])"
//            var num2 = "\(num[lastIndex..<num.endIndex])"
//            
//            if num2.first == "0" && num2.count > 1 {
//                continue
//            }
//            
//            var num3 = String(Int(num1)! + Int(num2)!)
//            
//            DFS(depth: depth + 1, num: num3)
//            
//        }
//    }
//    
//    DFS(depth: 0, num: num)
//    
//    answer.append(ans.0)
//    answer.append(ans.1)
//    
//    return answer
//}
