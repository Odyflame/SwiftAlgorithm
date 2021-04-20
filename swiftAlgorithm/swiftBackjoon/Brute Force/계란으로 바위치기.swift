//
//  계란으로 바위치기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/13.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution16987() {
//    
//    var eggNum = Int(readLine()!)!
//    var egg = [(Int, Int)]()
//    var visit = [Bool](repeating: false, count: eggNum)
//    var answer = 0
//    
//    for _ in 0 ..< eggNum {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        egg.append((temp[0], temp[1] ) )
//    }
//    
//    func DFS( index: Int ) {
//        
//        var temp = egg.filter { (result) -> Bool in
//            return result.0 <= 0
//        }.count
//        
//        if index == egg.count {
//            answer = max(answer, temp)
//            return
//        }
//        
//        if egg[index].0 <= 0 || ( egg[index].0 > 0 && temp == egg.count - 1 ){ // 손에 든 계란이 깨진경우
//            DFS(index: index + 1)
//        }
//        
//        for i in 0 ..< egg.count {
//            if i != index && egg[i].0 > 0 && egg[index].0 > 0 {
//                var tempX = egg[index].0
//                var tempY = egg[i].0
//                
//                egg[index].0 = egg[index].0 - egg[i].1
//                egg[i].0 = egg[i].0 - egg[index].1
//                
//                DFS(index: index + 1)
//                
//                egg[index].0 = tempX
//                egg[i].0 = tempY
//            }
//        }
//        
//    }
//    
//    DFS(index: 0)
//    
//    print(answer)
//}
