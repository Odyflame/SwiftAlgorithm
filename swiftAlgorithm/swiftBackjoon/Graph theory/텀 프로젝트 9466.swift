//
//  텀 프로젝트 9466.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/10.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//
//var arr: [Int] = []
//var answer = 0
//var visit: [Int] = [Int](repeating: 0, count: 100000)
//var first_student: [Int] = [Int](repeating: 0, count: 100000)
//
//// 다시 풀어봐야 한다.
//func solution9466() {
//    let T = Int(readLine()!)!
//    for _ in 0 ..< T {
//        let n = Int(readLine()!)!
//        arr = readLine()!.parse().map { $0 - 1 }
//        visit = [Int](repeating: 0, count: n + 1)
//        first_student = [Int](repeating: 0, count: n + 1)
//        
//        for i in 0 ..< n {
//            if visit[i] == 0 {
//                
//                DFS9466(start: i, depth: i, sum: 0)
//            }
//        }
//        
//        print(n - answer)
//        answer = 0
//    }
//}
//
//func DFS9466(start: Int, depth: Int, sum: Int) {
//    
//    if visit[depth] > 0 {
//        
//        if start != first_student[depth] { // 사이클이 돌아간다?
//            return
//        }
//        
//        answer += sum - visit[depth]
//        return
//    }
//    
//    visit[depth] = sum
//    first_student[depth] = start
//    DFS9466(start: start, depth: arr[depth], sum: sum + 1)
//}
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//}
