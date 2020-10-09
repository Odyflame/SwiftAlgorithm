//
//  스도쿠 2580.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2580() {
//
//    var sudoku = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 10)
//    var answer = [(Int, Int)]()
//
//    var miniSudoku = [(Int, Int)]()
//
//    for i in 1 ... 9 {
//        var temp = readLine()!.components(separatedBy: [" "]).map { Int($0)!}
//        for j in 1 ... temp.count {
//            sudoku[i][j] = temp[j - 1]
//            if temp[j - 1] == 0 {
//                answer.append((i, j))
//            }
//        }
//    }
//
//    while !answer.isEmpty {
//        let temp = answer.removeFirst()
//
//        let x = ((temp.0 - 1) / 3) * 3
//        let y = ((temp.1 - 1) / 3) * 3
//        var tempArr = [Int](repeating: -1, count: 10)
//        var check = false
//        var tempPos: (Int, Int) = (-1, -1)
//
//        for i in x ..< x + 2 {
//            for j in y ..< y + 2 {
//                if sudoku[i + 1][j + 1] > 0 {
//                    tempArr[sudoku[i + 1][j + 1]] = 1
//                } else {
//                    if check {
//                        tempPos = (-1, -1)
//                        break
//                    } else {
//                        check = true
//                        tempPos = (i + 1, j + 1)
//                    }
//                }
//            }
//        }
//
//        if tempPos != (-1, -1) {
//            for k in 1 ... tempArr.count {
//                if tempArr[k] == 0 {
//                    sudoku[temp.0][temp.1] = k
//                    break
//                }
//            }
//        } else {
//
//            tempArr = [Int](repeating: -1, count: 10)
//            var tempBrr = [Int](repeating: -1, count: 10)
//
//            for i in 1 ... 9 {
//                if sudoku[temp.0][i] > 0 {
//                    tempArr[sudoku[temp.0][i]] = 1
//                }
//                if sudoku[i][temp.1] > 0 {
//                    tempBrr[sudoku[i][temp.1]] = 1
//                }
//            }
//
//            var check1 = false
//            var checkFlag1 = -1
//            var check2 = false
//            var checkFlag2 = -1
//
//            for k in 1 ..< tempArr.count {
//                if tempArr[k] == 0 {
//
//                    checkFlag1 = k
//                    if check1 {
//                        checkFlag1 = -1
//                    }
//                    check1 = true
//
//                    checkFlag2 = k
//                    if check2 {
//                        checkFlag2 = -1
//                    }
//                    check2 = true
//
//                }
//            }
//
//            if checkFlag1 > 0 {
//                sudoku[temp.0][temp.1] = checkFlag1
//                continue
//            }
//            if checkFlag2 > 0 {
//                sudoku[temp.0][temp.1] = checkFlag2
//                continue
//            }
//
//            answer.append(temp)
//        }
//
//    }
//
//    for i in 1 ... 9 {
//        var answer = ""
//        for j in 1 ... 9 {
//            answer = answer + "\(sudoku[i][j]) "
//        }
//        print(answer)
//    }
//}
