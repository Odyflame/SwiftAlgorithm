//
//  멀티탭 스케줄링 1700 .swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1700() {
//    
//    var NK = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    var electric = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    
//    var greedy = [Int: Int]()
//    
//    for i in 0 ..< NK[1] {
//        if greedy[electric[i]] == nil {
//            greedy[electric[i]] = 1
//        } else {
//            greedy[electric[i]]! += 1
//        }
//    }
//    
//    var queue = [Int]()
//    var answer = 0
//    
//    for i in 0 ..< NK[1] {
//        
//        if queue.count == NK[0] {
//            
//            var temp = 9999999
//            var check = 0
//            
//            for j in 0..<queue.count {
//                if temp > greedy[queue[j]]! {
//                    check = j
//                    temp = greedy[queue[j]]!
//                }
//            }
//            
//            queue.remove(at: check)
//            queue.append(electric[i])
//            answer += 1
//            greedy[electric[i]]! -= 1
//            
//        } else {
//            if !queue.contains(electric[i])  {
//                queue.append(electric[i])
//            }
//            greedy[electric[i]]! -= 1
//        }
//        
//    }
//    
//    print(answer)
//    
//}
