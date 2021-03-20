//
//  감시 15683.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/17.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution15683() {
//    let NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var office = [[Int]]()
//
//    struct Cctv {
//        var value: Int
//        var x: Int
//        var y: Int
//    }
//
//    var cctv = [Cctv]()
//    var answer = 9999999999
//
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//
//    let ddddx = [1, 0]
//    let ddddy = [0, 1]
//
//    let dddx = [-1,0,1,0,-1]
//    let dddy = [0,1,0,-1,0]
//
//    let ddx = [1,0,-1,0,1,0]
//    let ddy = [0,1,0,-1,0,1]
//
//    // 사무실의 범위를 벗어나는지 조사
//    func checkRange(x: Int, y: Int) -> Bool {
//        return x >= 0 && y >= 0 && x < NM[0] && y < NM[1]
//    }
//
//    // 감시카메라의 위치와 방향에 맞는 쪽으로 7을 그린다. 벽이면 그만두고, 1에서 5면 pass, 아닌 경우는 7을 넣어준다
//    func markRange(x: Int, y: Int, myOffice1: [[Int]], mx: Int, my: Int) -> [[Int]]{
//        //여기서는 office에 방향을 그린다.
//        var myOffice2 = myOffice1
//        for i in 1 ..< 8 {
//            let cx = x + mx*i
//            let cy = y + my*i
//
//            if checkRange(x: cx, y: cy) {
//                if myOffice2[cx][cy] == 6 {
//                    //벽이니 stop
//                    return myOffice2
//                } else if 1 <= myOffice2[cx][cy] && myOffice2[cx][cy] <= 5 {
//                    continue
//                } else {
//                    myOffice2[cx][cy] = 7
//                }
//            } else {
//                return myOffice2
//            }
//        }
//
//        return myOffice2
//    }
//
//    // cctv의 개수에 도달하면 dfs를 멈춘다
//    func dfs(depth: Int, myOffice: [[Int]] ) {
//
//        // 만약 모든 cctv를 다 돌았을 경우 return
//        if depth >= cctv.count {
//            var sum = 0
//
//            myOffice.forEach { room in
//                sum += room.filter { $0 == 0}.count
//            }
//
//            answer = min(answer, sum)
//            return
//        }
//
//        var Office = myOffice
//
//        if cctv[depth].value == 1 {
//            // 4방향으로 검사
//            for i in 0 ..< 4 {
//                Office = myOffice
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: dx[i], my: dy[i])
//                dfs(depth: depth + 1, myOffice: Office)
//            }
//
//        } else if cctv[depth].value == 2 {
//            // 두방향으로 검사
//            for i in 0 ..< 2 {
//                Office = myOffice
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: ddddx[i], my: ddddy[i])
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: -ddddx[i], my: -ddddy[i])
//                dfs(depth: depth + 1, myOffice: Office)
//            }
//
//        } else if cctv[depth].value == 3 {
//            // 다른 두방향으로 검사
//            for i in 0 ..< 4 {
//                Office = myOffice
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: dddx[i], my: dddy[i])
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: dddx[i + 1], my: dddy[i + 1])
//                dfs(depth: depth + 1, myOffice: Office)
//            }
//
//        } else if cctv[depth].value == 4 {
//            for i in 0 ..< 4 {
//                Office = myOffice
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: ddx[i], my: ddy[i])
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: ddx[i + 1], my: ddy[i + 1])
//                Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: ddx[i + 2], my: ddy[i + 2])
//                dfs(depth: depth + 1, myOffice: Office)
//            }
//
//        } else if cctv[depth].value == 5 {
//            Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: 0, my: 1)
//            Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: 0, my: -1)
//            Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: 1, my: 0)
//            Office = markRange(x: cctv[depth].x, y: cctv[depth].y, myOffice1: Office, mx: -1, my: 0)
//            dfs(depth: depth + 1, myOffice: Office)
//        }
//
//    }
//
//    for i in 0 ..< NM[0] {
//        let temp = readLine()!.split(separator: " ").map { Int($0)! }
//        for tempIndex in 0 ..< temp.count {
//            if temp[tempIndex] != 0 && temp[tempIndex] != 6 {
//
//                var tempCCTV = Cctv(value: temp[tempIndex], x: i, y: tempIndex)
//                cctv.append(tempCCTV)
//            }
//        }
//        office.append(temp)
//    }
//
//    //depth는 cctv 배열의 위치
//    dfs(depth: 0, myOffice: office)
//
//    print(answer)
//}
