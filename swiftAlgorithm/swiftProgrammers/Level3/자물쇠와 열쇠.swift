//
//  자물쇠와 열쇠.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/08.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//
//func solution(_ key:[[Int]], _ lock:[[Int]]) -> Bool {
//    
//    // turn left
//    func rotateKey(arr: [[Int]]) -> [[Int]] {
//        var newArr = arr
//        
//        for i in 0 ..< arr.count {
//            for j in 0 ..< arr.count {
//                newArr[arr.count - 1 - j][i] = arr[i][j]
//            }
//        }
//        
//        return newArr
//    }
//    
//    func makeNewLock(arr: [[Int]]) -> [[Int]] {
//        var newLock = [[Int]](repeating: [Int](repeating: 1, count: key.count+key.count+lock.count-2), count: key.count+key.count+lock.count-2)
//        
//        for i in 0 ..< newLock.count {
//            for j in 0 ..< newLock.count {
//                
//                if i >= key.count-1 && i < key.count + lock.count - 1 && j >= key.count-1 && j < key.count + lock.count - 1 {
//                    newLock[i][j] = lock[i - key.count + 1][j - key.count + 1]
//                }
//                
//            }
//        }
//        
//        return newLock
//    }
//    
//    let convertLock = makeNewLock(arr: lock)
//    var newKey = key
//    for _ in 0 ..< 4 {
//        
//        newKey = rotateKey(arr: newKey)
//        var newLock = convertLock
//        
//        for i in 0 ..< newLock.count - newKey.count {
//            for j in 0 ..< newLock.count - newKey.count {
//                
//                for k in 0 ..< newKey.count {
//                    for h in 0 ..< newKey.count {
//                        newLock[i + k][j + h] += newKey[k][h]
//                    }
//                }
//                
//                // 열쇠가 맞는지 체크
//                var check = true
//                for k in newKey.count - 1 ..< lock.count + newKey.count - 1 {
//                    for h in newKey.count - 1 ..< lock.count + newKey.count - 1 {
//                        if newLock[k][h] == 0 || newLock[k][h] == 2 {
//                            check = false
//                            break
//                        }
//                        if !check {
//                            break
//                        }
//                    }
//                }
//                
//                if check {
//                    return check
//                }
//                
//                newLock = convertLock
//            }
//        }
//        
//    }
//    
//    return false
//}
