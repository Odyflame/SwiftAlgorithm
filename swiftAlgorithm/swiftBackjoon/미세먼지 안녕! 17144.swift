//
//  미세먼지 안녕! 17144.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/15.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

let defaultArr = [[Int]](repeating: [Int](repeating: 0, count: 51), count: 51)
var cleaner = [(Int, Int)]()

func spread17144(arr: [[Int]], R: Int, C: Int) -> [[Int]] {
    
    var temp = [[Int]](repeating: [Int](repeating: 0, count: C), count: R)
    
    for i in 0 ..< arr.count {
        for j in 0 ..< arr[i].count {
            
        }
    }
    
    return temp
}

func move17144(arr: [[Int]], R: Int, C: Int) -> [[Int]]{
    
}

func solution17144() {

    let read = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    
    var arr = [[Int]]()
    
    for i in 0 ..< read[0] {
        var temp = readLine()!.components(separatedBy: " ").map({ Int($0)! })
        for j in temp {
            if j == -1 {
                cleaner.append((i, arr[i].count))
                arr[i].append(0)
            } else {
             arr[i].append(j)
            }
            
        }
    }
    
    
}
