//
//  배열 돌리기 16926.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

// 알고리즘은 맞는것같은데 시간초과가난다
func solution16926() {
    
    var NMR = readLine()!.parse()
    var arr = [[Int]]()
    var brr = [[Int]]()
    for _ in 0 ..< NMR[0] {
        var temp = readLine()!.parse()
        arr.append(temp)
    }
    
    brr = arr
    
    func rotate(depthX: Int, depthY: Int) {
        //depth는 카운트의 절반이어야 한다
        
        var dx = arr.count - depthX - 1
        var dy = arr[0].count - depthY - 1
        
        for i in depthY ..< dy {
            brr[depthX][i] = arr[depthX][i + 1]
        }
        
        for i in stride(from: dx, to: depthX, by: -1) {
            brr[i][depthY] = arr[i - 1][depthY]
        }
        
        for i in stride(from: dy, to: depthY, by: -1) {
            brr[dx][i] = arr[dx][i - 1]
        }
        
        for i in  depthX ..< dx {
            brr[i][dy] = arr[i + 1][dy]
        }
        
        if depthX == (arr.count - 1) / 2 || depthY == (arr[0].count - 1) / 2 {
            return
        } else {
            rotate(depthX: depthX + 1, depthY: depthY + 1)
        }
    }
    
    for i in 0 ..< NMR[2] {
        rotate(depthX: 0, depthY: 0)
        arr = brr
    }
    
    
    brr.forEach { (Element) in
        var ans = ""
        Element.forEach { (b) in
            ans += "\(b) "
        }
        print(ans)
    }
}

extension String {
    static let zero = Character("0").asciiValue!
    func parse() -> [Int] {
        var answer: [Int] = []
        var temp = 0

        for c in self {
            if c == " " {
                answer.append(temp)
                temp = 0
                continue
            }

            temp *= 10
            temp += Int(c.asciiValue! - Self.zero)
        }

        answer.append(temp)
        return answer
    }
}
