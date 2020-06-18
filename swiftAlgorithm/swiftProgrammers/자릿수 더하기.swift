//
//  자릿수 더하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/18.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ n:Int) -> Int
//{
//    var answer:Int = 0
//
//    var tempn = n
//    while tempn > 0 {
//        answer += tempn % 10
//        tempn -= tempn % 10
//        tempn /= 10
//    }
//
//    return answer
//}

//func solution(_ n:Int) -> Int
//{
//    
//    // reduce -> 시퀀스의 요소에서 단일 값을 생성하는 방법
//    // 일련의 숫자에서 이 방법을 사용하여 제품의 합계 또는 제품을 찾을수있다.
//    let arr = String(n).reduce(3) { 
//        
//        print("\($0) " + "\($1)")
//        return  $0+Int(String($1))!
//    }
//    
//    print(arr)
//    
//    return String(n).reduce(0, {$0+Int(String($1))!});
//}
