//
//  탈출 16397.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution16397() {
//    
//    func modifyNumber(num: Int) -> Int {
//        var num = num * 2
//        
//        if num > 99999 || num == 0{
//            return num
//        }
//        var check = String(num).count - 1
//        
//        var number = pow(10.0, Float(check))
//        num -= Int(number)
//        
//        return num
//    }
//    
//    var NTG = readLine()!.parse()
//    var answer = 100000
//    var visit = [Bool](repeating: false, count: 200001)
//    var qu: [(Int, Int)] = []
//    qu.append((NTG[0], 0))
//    var qMax = 0
//    
//    while qu.count > qMax {
//        var temp = qu[qMax]
//        qMax += 1
//        
//        if temp.1 > NTG[1] {
//            break
//        }
//        if temp.0 == NTG[2] {
//            answer = temp.1
//            break
//        }
//        
//        if temp.0 + 1 <= 99999 && !visit[temp.0 + 1] {
//            visit[temp.0 + 1] = true
//            qu.append((temp.0 + 1, temp.1 + 1))
//        }
//        
//        let tempB = modifyNumber(num: temp.0)
//        if tempB <= 99999 && !visit[tempB] {
//            visit[tempB] = true
//            qu.append((tempB, temp.1 + 1))
//        }
//        
//    }
//    
//    if answer == 100000 {
//        print("ANG")
//    } else {
//        print(answer)
//    }
//    
//}
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
