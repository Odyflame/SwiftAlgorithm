//
//  수식 최대화.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution(_ expression:String) -> Int64 {
    
    var pri = [String]()
    
    var exp = expression.components(separatedBy: ["+","-","*"]).map { Int($0)! }
    var oper = expression.filter { !$0.isNumber }
    
    var answer: Int64 = 0
    
    var priorities = ["+-*", "+*-", "*-+", "*+-", "-+*", "-*+",]
    
    func calc(_ firstNum: Int, _ secondNum: Int, _ operand: Character ) -> Int {
        var answer = 0
        switch operand {
            case "+": answer = firstNum + secondNum
            case "*": answer = firstNum * secondNum
            case "-": answer = firstNum - secondNum
            default: break
        }
        return answer
    }
    
    for priority in priorities {
        var tempExp = exp
        var tempOper = Array(oper)
        
        var tempAnswer = 0
        for i in priority {
            var index = 0
            while tempOper.contains(i) {
                
                if tempOper[index] == i {
                    //지금 계산할 오퍼레이터가 지금 당장 최고 우선순위인경우
                    let cal = calc(tempExp[index], tempExp[index + 1], i)
                    tempExp.remove(at: index)
                    tempExp.remove(at: index)
                    tempExp.insert(cal, at: index)
                    tempOper.remove(at: index)
                    index -= 1
                }
                
                index += 1
            }
        }
        
        answer = max(answer, Int64(abs(tempExp.first!)))
    }
    
    return answer
}
