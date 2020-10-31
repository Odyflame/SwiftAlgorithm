//
//  곱셈 1629.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1629() {
    
    var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    func squaring(x: Int, n: Int) -> Int {
        if n == 0 { return 1}
        
        if n%2 == 1 { return x * squaring(x: x, n: n-1) % temp[2]}
        else {
            var half = squaring(x: x, n: n/2)
            return half * half % temp[2]
        }
    }
    
    print(squaring(x: temp[0], n: temp[1]))
    
}
