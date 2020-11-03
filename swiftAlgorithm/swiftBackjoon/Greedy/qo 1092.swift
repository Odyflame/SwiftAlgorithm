//
//  qo 1092.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//}
//
//func solution1092() {
//    
//    let N = Int(readLine()!)!
//    let tempN = readLine()!.parse().sorted(by: >)
//    _ = Int(readLine()!)!
//    var tempM = readLine()!.parse().sorted(by: <)
//    
//    var answer = 0
//    
//    if tempN.first! < tempM.last! {
//        print(-1)
//    } else {
//        while !tempM.isEmpty {
//            
//            answer += 1
//            
//            for i in 0 ..< N {
//                if tempM.isEmpty {
//                    break
//                }
//                if tempN[i] >= tempM.last! {
//                    tempM.removeLast()
//                } else {
//                    for j in stride(from: tempM.count - 1, to: 0, by: -1) {
//                        if tempN[i] >= tempM[j] {
//                            tempM.remove(at: j)
//                            break
//                        }
//                        
//                    }
//                }
//            }
//            
//        }
//        
//        print(answer)
//    }
//    
//    
//}
