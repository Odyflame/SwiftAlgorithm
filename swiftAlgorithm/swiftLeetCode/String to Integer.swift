//
//  String to Integer.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func myAtoi(_ str: String) -> Int {
    var sArray = Array(str)
    var answer = 0
    
    var flag = 0
    var check = false
    for c in str {
        if let uni = c.asciiValue {
            if uni == 45 {
                if !check {
                    check = !check
                    if flag == 0 {
                        flag = -1
                    } else {
                        break
                    }
                } else {
                    break
                }
            }
            else if uni == 43  {
                if !check {
                    check = !check
                    if flag == 0 {
                        flag = 1
                    } else {
                        break
                    }
                }
                else {
                    break
                }
            }
            else if uni >= 48 && uni <= 57 {
                if !check {
                    check = !check
                }
                if flag == 0 || flag == 1 {
                    if Int32.max / 10 > answer || (Int32.max / 10 == answer && Int32.max % 10 >= Int(String(c))! ) {
                        answer = answer * 10 + Int(String(c))!
                    } else {
                        return Int(Int32.max)
                    }
                }else {
                    if Int32.min / 10 < answer || (Int32.min / 10 == answer && Int32.min % 10 <= -Int(String(c))! ) {
                        answer = answer * 10 - Int(String(c))!
                    } else {
                        return Int(Int32.min)
                    }
                }
                
            } else if uni == 32 {
                if check {
                    break
                }
                continue
            }
            else {
                break
            }
        }
    }
    
    return answer
}

