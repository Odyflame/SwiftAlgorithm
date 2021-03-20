//
//  통계학 2108.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/18.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution2751() {
    var N = Int(readLine()!)!
    var arr = [Int]()
    var arr2 = [Int: Int]()
    for i in 0..<N {
        var temp = Int(readLine()!)!
        arr.append(temp)
        if arr2[temp] == nil {
            arr2[temp] = 1
        } else {
            arr2[temp]! += 1
        }
        
    }

    print( Int(round( Double(arr.reduce(0, +) / arr.count) )) )
    arr = arr.sorted()
    print(arr[arr.count / 2])
    
    var ans = 0
    var ansarr = [Int]()
    
    arr2.forEach { (result) in
        if result.value > ans {
            ans = result.value
            ansarr = [result.key]
        } else if result.value == ans {
            ansarr.append(result.key)
        }
    }
    
    if ansarr.count == 1 {
        print(ansarr.last!)
    } else {
        ansarr = ansarr.sorted()
        print(ansarr[1])
    }
    
    print(arr.max()! - arr.min()!)
}
