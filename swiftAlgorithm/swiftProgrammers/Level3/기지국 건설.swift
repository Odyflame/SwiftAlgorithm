//
//  기지국 건설.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/08.
//  Copyright © 2020 odyflame. All rights reserved.
//
import Foundation

// 다시 풀어봐야 할듯하다
//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    var answer = 0
//
//    var start = 0
//    var dis = 2 * w + 1
//
//    for i in stations {
//        var left = i - w - 1
//        var right = i + w - 1
//
//        //기존 기지국이 겹쳐있을 경우
//        if start >= left && start <= right {
//            start = right + 1
//            continue
//        }
//
//        var div = (left - start) / dis
//        var rest = ( left - start ) % dis
//
//        if rest > 0 {
//            div += 1
//        }
//        answer += div
//        // 다음 시작지점
//        start = right + 1
//    }
//
//    // 기존 기지국 중에 마지막 기지국 이후 N까지
//    if start < n {
//        var div = (n - start) / dis
//        var rest = (n - start) % dis
//        if rest > 0 {
//            div += 1
//        }
//        answer += div
//    }
//
//    return answer
//}

