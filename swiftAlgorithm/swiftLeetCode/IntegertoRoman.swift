//
//  IntegertoRoman.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func intToRoman(_ num: Int) -> String {
    
    var answer = ""
    let roman = [  3000 : "MMM",  2000 :"MM"  , 1000 : "M",  900 : "CM" , 800 : "DCCC" , 700:"DCC" , 600: "DC",  500: "D" ,
                   400 : "CD" , 300 : "CCC", 200 : "CC" ,100 : "C", 90 : "XC" ,80 : "LXXX", 70 : "LXX", 60 : "LX",50 : "L"
    ,40 : "XL", 30 : "XXX", 20 : "XX", 10 : "X" , 9 : "IX", 8 : "VIII", 7  : "VII", 6  : "VI",5 : "V",4 : "IV",3 : "III",2 : "II",1 : "I" ]
    var srr = String(num)
    
    var num2 = num
    var c = 1000
    
    while c > 0 {
        var carry = num2 / c//0
        num2 = num2 - carry * c//num2
        
        if carry * c > 0 {//0
            answer += roman[ carry * c ]!//
        }
        
        c /= 10
    }
    
    return answer
}
