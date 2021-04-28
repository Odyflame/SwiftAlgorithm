//
//  큐 2 18258.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/23.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

// 이건 시간초과
func solution18258() {
    var N = Int(readLine()!)!
    var qu = [String]()
    var firstIndex = 0
    
    for i in 0 ..< N {
        var order = readLine()!.map { String($0)}
        
        switch order[0] {
        case "push":
            qu.append(order[1])
        case "pop":
            if firstIndex == qu.count {
                print(-1)
            } else {
                print(qu[firstIndex])
                firstIndex += 1
            }
        case "front":
            if qu.isEmpty {
                print(-1)
            } else {
                print(qu[firstIndex])
            }
        case "back":
            if qu.isEmpty {
                print(-1)
            } else {
                print(qu.last)
            }
        case "size":
            print(qu.count)
        default:
            if qu.isEmpty {
                print(1)
            } else {
                print(0)
            }
        }
        
    }
}
