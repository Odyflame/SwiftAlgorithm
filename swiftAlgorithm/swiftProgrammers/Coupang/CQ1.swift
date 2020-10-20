//
//  CQ1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ N: Int) -> [Int] {
//    
//    var answer = [Int]()
//    
//    for i in 2 ... 9 {
//        
//        var temp = ""
//        var n = N
//        var rest = 0
//        
//        while n > 0 {
//            temp = "\(n % i)" + temp
//            n /= i
//        }
//        
//        var tempAnswer = 1
//        for j in temp {
//            tempAnswer *= Int(String(j))!
//        }
//        
//        if answer.isEmpty || answer[1] < tempAnswer {
//            answer = [i, tempAnswer]
//        }
//        else if answer[1] == tempAnswer {
//            if answer[0] < i {
//                answer = [i, tempAnswer]
//            } else {
//                answer = [answer[0], tempAnswer]
//            }
//        }
//    }
//    
//    return answer
//}
