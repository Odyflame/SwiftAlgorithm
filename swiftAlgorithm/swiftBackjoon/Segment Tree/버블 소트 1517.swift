//
//  버블 소트 1517.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/30.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1517() {
    
    var tree = [Int](repeating: 0, count: 500010)
    var answer = 0
    
    func merge(arr: inout [Int], start: Int, end: Int, mid: Int) {
        var bufPtr = start
        var startPtr = start
        var endPtr = mid + 1
        var cnt = 0
        
        while startPtr <= mid && endPtr <= end {
            if arr[startPtr] <= arr[endPtr] {
                tree[bufPtr] = arr[startPtr]
                startPtr += 1
            } else {
                answer += mid - startPtr + 1
                tree[bufPtr] = arr[endPtr]
                endPtr += 1
            }
            bufPtr += 1
            
        }
        
        if startPtr > mid {
            for i in endPtr ... end {
                tree[bufPtr] = arr[i]
                bufPtr += 1
            }
        }
        else {
            for i in startPtr ... mid {
                tree[bufPtr] = arr[i]
                bufPtr += 1
            }
        }
        
        for i in start ... end {
            arr[i] = tree[i]
        }
    }
    
    func divide( arr: inout [Int], start: Int, end: Int ) {
        var mid = (start + end) / 2
        if start < end {
            divide(arr: &arr, start: start, end: (start + end) / 2)
            divide(arr: &arr, start: (start + end) / 2 + 1, end: end)
            merge(arr: &arr, start: start, end: end, mid: mid)
        }
    }
    
    var N = Int(readLine()!)!
    var arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    divide(arr: &arr, start: 0, end: N-1)
    print(answer)
}
