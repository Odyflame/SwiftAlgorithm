//
//  숫자 야구.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ baseball:[[Int]]) -> Int {
//    
//    var answer = 0
//    for i in 123...987 {
//        
//        var a = i / 100
//        var b = (i - a * 100 ) / 10
//        var c = i % 10
//        
//        if c != 0 && b != 0 && a != b && b != c && a != c{
//            
//            var flag = true
//            for ball in baseball {
//                
//                var ba = ball[0] / 100
//                var bb = (ball[0] - ba * 100) / 10
//                var bc = ball[0] % 10
//                
//                var ss = 0
//                var sb = 0
//                
//                if a == ba {
//                    ss += 1
//                } else if a == bb || a == bc {
//                    sb += 1
//                }
//                
//                if b == bb {
//                    ss += 1
//                } else if b == ba || b == bc {
//                    sb += 1
//                }
//                
//                if c == bc {
//                    ss += 1
//                } else if c == ba || c == bb {
//                    sb += 1
//                }
//             
//                if ss == ball[1] && sb == ball[2] {
//                    
//                } else {
//                    flag = false
//                    break
//                }
//                
//            }
//            
//            if flag {
//                answer += 1
//            }
//        }
//    }
//    
//    
//    return answer
//}
