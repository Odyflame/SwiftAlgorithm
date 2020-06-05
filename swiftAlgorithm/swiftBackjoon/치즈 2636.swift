//
//  치즈 2636.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

var dx = [0,0,1,-1]
var dy = [1,-1,0,0]

func solution2636() {
    let MN = readLine()!.split(separator: " ").map { Int($0)! }
    
    var arr = [[Int]](repeating: [Int](repeating: 0, count: 105), count: 105)
    
    for i in 0..<MN[0] {
        let temp = readLine()!.split(separator: " ").map { Int($0)! }
        arr[i] = temp
    }
    
    var tempSum = 0
    var temptime = 0
    
    while !isEmpty(box: arr) {
        var check = [[Bool]](repeating: [Bool](repeating: false, count: 105), count: 105)
        var removequ = [(Int, Int)]()
        
        for i in 0..<MN[0] {
            for j in 0..<MN[1] {
                
                if !check[i][j] && arr[i][j] == 1 {
                    //한번도 가지 않았고 1인 경우에만
                    
                    tempSum = 0//1의 합
                    var qu = [(Int, Int)]()
                    
                    qu.insert((i, j), at: qu.endIndex)
                    
                    while !qu.isEmpty {
                        
                        let tempqu = qu.removeFirst()
                        let x = tempqu.0, y = tempqu.1
                        
                        if check[x][y] {
                            continue
                        }
                        
                        tempSum += 1
                        check[x][y] = true
                        
                        if arr[x + 1][y] == 0 || arr[x][y+1] == 0 || arr[x-1][y] == 0 || arr[x][y-1] == 0 {
                            //공기와 맞닿은경우
                            removequ.append((x ,y))
                        }
                        
                        for k in 0...3 {
                            if arr[x + dx[k]][y + dy[k]] == 1 && !check[x + dx[k]][y + dy[k]] {
                                
                                qu.insert((x + dx[k], y + dy[k]), at: qu.endIndex)
//                                if arr[x + dx[k] + 1][y + dy[k]] == 0 || arr[x + dx[k]][y+1 + dy[k]] == 0 || arr[x-1 + dx[k]][y + dy[k]] == 0 || arr[x + dx[k]][y-1 + dy[k]] == 0 {
//                                    //공기와 맞닿은경우
//                                    removequ.append((x + dx[k],y + dy[k]))
//                                }
                                
                            }
                        }
                        
                    }
                    
                }
            }
        }
        
        for x in removequ.enumerated() {
            arr[x.element.0][x.element.1] = 0
        }
        temptime += 1
        for b in arr {
            print(b)
        }
    }
    
    print(temptime)
    print(tempSum)
    
    
}

func isEmpty(box: [[Int]]) -> Bool{
    for idsdd in box {
        for idsd in idsdd {
            if idsd == 1 {
                return false
            }
        }
    }
    
    return true
}
