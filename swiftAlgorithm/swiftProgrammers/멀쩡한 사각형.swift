//
//  멀쩡한 사각형.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


func gcd(w: Int, h:Int) -> Int {
    var temp: Int = 0
    var answ = w, ansh = h
    while ansh != 0 {
        temp = answ % ansh
        answ = ansh
        ansh = temp
    }
    return answ
}

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer:Int64 = 0
    
    if w > h {
        var tempA = Int64(w) * Int64(h)
        var temp = gcd(w: w, h: h)
        tempA -= Int64(w + h - temp)
        return tempA
    } else {
        var tempA = Int64(w) * Int64(h)
        var temp = gcd(w: h, h: w)
        tempA -= Int64(w + h - temp)
        return tempA
    }
    
    /**
     var answer: Int64 = 0
     var quotient = 0
     for i in 1...h {
     let qr = (i*w).quotientAndRemainder(dividingBy: h)
     
     answer += Int64(qr.quotient -= quotient)
     answer += qr.remainder == 0 ? Int64(0) : Int64(1)
     
     
     */

    return answer
}
