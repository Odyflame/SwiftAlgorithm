//
//  메뉴 리뉴얼.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

//존나 어려워서 풀이를 보았다
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    var set = [String: Int]()
//
//    // 탐색 시작
//    func dfs(index: Int, origin: [Character], newString: String) {
//        //주어진 최대 길이보다 현재 문자열 길이가 길면 검사할 필요가 없다
//        if course.last! < newString.count {
//            return
//        }
//
//        //주어진 길이에 해당하는 코스길이가 있으면 갯수 추가
//        if course.contains(newString.count) {
//            if set.keys.contains(newString) {
//                set[newString]! += 1
//            } else {
//                set[newString] = 1
//            }
//        }
//
//        //현재인덱스 뒤부터 접근
//        for i in index..<origin.count {
//            let c = origin[i]
//            dfs(index: i + 1, origin: origin, newString: newString + String(c))
//        }
//
//    }
//
//
//    for order in orders {
//        let order = order.sorted()
//        dfs(index: 0, origin: order, newString: "")
//    }
//
//    // 조합 중 2번이상 선택받은 메뉴만 가능
//    // 최댓값이 같으면 모두 포함
//    var result = [String]()
//    for length in course {
//        let temp = set.filter { $0.key.count == length && $0.value > 1 }
//        let maxNum = temp.max { $0.value < $1.value }
//        let menu = temp.filter { maxNum!.value == $0.value }.map{ $0.key }
//        result.append(contentsOf: menu)
//    }
//
//    return result.sorted()
//}

