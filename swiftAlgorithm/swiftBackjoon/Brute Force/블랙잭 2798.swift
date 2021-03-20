//
//  블랙잭 2798.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/18.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2798() {
//    let NM = readLine()!.split(separator: " ").map { Int($0)! }
//    let arr = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var check =  [Bool](repeating: false, count: NM[0])
//    var answer = 0
//    
//    func DFS(depth: Int, sum: Int) {
//        if depth == 3 {
//            if sum <= NM[1] {
//                answer = max(answer, sum)
//            }
//            
//            return
//        }
//        
//        
//        for i in 0 ..< NM[0] {
//            if !check[i] {
//                check[i] = true
//                DFS(depth: depth + 1, sum: sum + arr[i])
//                check[i] = false
//            }
//        }
//        
//    }
//    
//    DFS(depth: 0, sum: 0)
//    print(answer)
//}
