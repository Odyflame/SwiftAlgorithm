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
//let dx = [0,0,1,-1] // 이미 선언되어 있다.
//let dy = [1,-1,0,0]

func spread17144(arr: [[Int]], R: Int, C: Int) -> [[Int]] {
    
    var temp = arr
    
    for i in 0 ..< R {
        for j in 0 ..< C {
            
            if arr[i][j] != 0 && arr[i][j] != -1 {
                var cnt = 0
                var value = arr[i][j] / 5
                for k in 0 ..< 4 {
                    var nx = dx[k] + i
                    var ny = dy[k] + j
                    
                    if nx >= 0 && ny >= 0 && nx < R && ny < C {
                        if arr[nx][ny] != -1 {
                            temp[nx][ny] += value
                            cnt += 1
                        }
                    }
                }
                temp[i][j] -= cnt*value
            }
        }
    }
    
    return temp
}

func move17144(arr: [[Int]], R: Int, C: Int) -> [[Int]]{
    
    // 공기청정기 위에서부터 0,0까지
    var temp = arr
    for i in stride(from: cleaner[0].0 - 1, to: 0, by: -1) {
        temp[i][0] = temp[i - 1][0]
    }
    // 가장 윗줄 가져오기
    for i in 0 ..< C - 1 {
        temp[0][i] = temp[0][i + 1]
    }
    // 반대편 세로라인 가져오기
    for i in 0 ..< cleaner[0].0 {
        temp[i][C - 1] = temp[i + 1][C - 1]
    }
    // 공기청정기 라인 땡겨주기
    for i in stride(from: C - 1, to: 1, by: -1) {
        temp[cleaner[0].0][i] = temp[cleaner[0].0][i - 1]
    }
    
    temp[cleaner[0].0][1] = 0
    
    for i in stride(from: cleaner[1].0 + 1, to: R - 1, by: 1) {
        temp[i][0] = temp[i + 1][0]
    }
    for i in stride(from: 0, to: C - 1, by: 1) {
        temp[R - 1][i] = temp[R - 1][i + 1]
    }
    for i in stride(from: R - 1, to: cleaner[1].0 - 1, by: -1) {
        temp[i][C - 1] = temp[i - 1][C - 1]
    }
    // 공기청정기 라인 땡겨주기
    for i in stride(from: C - 1, to: 1, by: -1) {
        temp[cleaner[1].0][i] = temp[cleaner[1].0][i - 1]
    }
    temp[cleaner[1].0][1] = 0
    
    return temp
}

func solution17144() {
    
    let read = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    var answer = 0
    var arr = [[Int]]()
    
    for i in 0 ..< read[0] {
        
        var temp = readLine()!.components(separatedBy: " ").map({ Int($0)! })
        var temparr = [Int]()
        
        var tempIndex = 0
        for j in temp {
            temparr.append(j)
            if j == -1 {
                cleaner.append((i, tempIndex))
            }
            tempIndex += 1
        }
        
        arr.append(temparr)
    }
    
    var counting = read[2]
    while counting > 0 {
        
        arr = spread17144(arr: arr, R: read[0], C: read[1])
        
//        for i in arr {
//            print(i)
//        }
//        print()
        
        arr = move17144(arr: arr, R: read[0], C: read[1])
//        for i in arr {
//            print(i)
//        }
//        print()
        
        counting -= 1
    }
    
    for i in 0 ..< read[0] {
        for j in 0 ..< read[1] {
            if arr[i][j] != -1 {
                answer += arr[i][j]
            }
        }
    }
    
    print(answer)
}
