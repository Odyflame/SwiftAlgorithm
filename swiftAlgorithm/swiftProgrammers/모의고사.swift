//
//  모의고사.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var answer1 = 0, index1 = 1
    var answer2 = 0, index2 = 1
    var answer3 = 0, index3 = 1
    var ans3 = [0,3,3,1,1,2,2,4,4,5,5]
    
    for i in 0..<answers.count {
        
        if index1 == 6 {
            index1 = 1
        }
        if index2 == 6 {
            index2 = 1
        }
        else if index2 == 2 {
            index2 += 1
        }
        
        if index3 == 11 {
            index3 = 1
        }
        
        if answers[i] == index1 {
            answer1 += 1
        }
        if i % 2 == 0 {//짝수이다.
            if answers[i] == 2 {
                answer2 += 1
            }
            index2 -= 1
        } else {//짝수가 아니다.
            if answers[i] == index2 {
                answer2 += 1
            }
        }
        if answers[i] == ans3[index3] {
            answer3 += 1
        }
        
        index1 += 1
        index2 += 1
        index3 += 1
    }
    
    var answer = [Int]()
    
    var maxAnswer = max(answer1, max(answer2, answer3))
    
    if maxAnswer == answer1 {
        answer.append(1)
    }
    if maxAnswer == answer2 {
        answer.append(2)
    }
    if maxAnswer == answer3 {
        answer.append(3)
    }
    
    return answer
}
