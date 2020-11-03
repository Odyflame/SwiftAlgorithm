//
//  창고다각형 2304.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2304() {
//    
//    var N = Int(readLine()!)!
//    var arr = [Int](repeating: 0, count: 1001)
//    
//    var maxHeight = (0, 0)
//    var minIdx = 99999
//    var maxIdx = 0
//    for i in 0 ..< N {
//        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//        
//        arr[temp[0]] = temp[1]
//        
//        if temp[0] < minIdx {
//            minIdx = temp[0]
//        }
//        if temp[0] > maxIdx {
//            maxIdx = temp[0]
//        }
//        if temp[1] > maxHeight.1 {
//            maxHeight = (temp[0], temp[1])
//        }
//    }
//    
//    func leftSum() -> Int{
//        var sum = 0
//        var h = 0
//        for i in minIdx ..< maxHeight.0 {
//            
//            h = max(h, arr[i])
//            sum += h
//            
//        }
//        return sum
//    }
//    
//    func rightSum() -> Int {
//        var sum = 0
//        var h = 0
//        
//        for i in stride(from: maxIdx, to: maxHeight.0, by: -1) {
//            h = max(h, arr[i])
//            sum += h
//        }
//        return sum
//    }
//    
//    print(maxHeight.1 + leftSum() + rightSum())
//    
//}
