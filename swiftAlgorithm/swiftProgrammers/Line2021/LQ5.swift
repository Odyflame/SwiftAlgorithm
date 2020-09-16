//
//  LQ5.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ cards:[Int]) -> Int {
//    
//    var cards = cards
//    struct Player {
//        var oneCard = 0
//        var twoCard = 0
//        var cards = [Int]()
//    }
//    struct Diller {
//        var showCard = 0
//        var cards = [Int]()
//    }
//    
//    var answer = 0
//    
//    while !cards.isEmpty {
//        var close = false
//        var player = Player()
//        var diller = Diller()
//        
//        player.cards.append(cards.first!)
//        cards.removeFirst()
//        
//        if cards.isEmpty {
//            break
//        }
//        
//        diller.cards.append(cards.first!)
//        cards.removeFirst()
//        
//        if cards.isEmpty {
//            break
//        }
//        player.cards.append(cards.first!)
//        cards.removeFirst()
//        
//        if cards.isEmpty {
//            break
//        }
//        diller.showCard = cards.first!
//        cards.removeFirst()
//        
//        //플레이어 차례
//        //픓레이어가 이기는경우
//        if player.cards[0] == 1 && 11 + player.cards[1] == 21{
//            
//            if diller.cards[0] == 1 && 11 + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.showCard == 1 && 11 + diller.cards[0] < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.cards[0] + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//        }
//        else if player.cards[1] == 1 && 11 + player.cards[0] == 21{
//            if diller.cards[0] == 1 && 11 + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.showCard == 1 && 11 + diller.cards[0] < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.cards[0] + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//        }
//        else if player.cards[0] + player.cards[1] == 21 {
//            if diller.cards[0] == 1 && 11 + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.showCard == 1 && 11 + diller.cards[0] < 21 {
//                answer += 3
//                close = true
//            }
//            else if diller.cards[0] + diller.showCard < 21 {
//                answer += 3
//                close = true
//            }
//        }
//        
//        while true {
//            
//            if diller.showCard == 1 || diller.showCard == 7 {
//                if cards.isEmpty {
//                    break
//                }
//                player.cards.append( cards.first!)
//                cards.removeFirst()
//                var tempSum = player.cards.reduce(0) { $0 + $1 }
//                if tempSum >= 17 {
//                    break
//                }
//            } else if diller.showCard == 4 || diller.showCard == 5 || diller.showCard == 6 {
//                break
//            } else if diller.showCard == 2 || diller.showCard == 3 {
//                if cards.isEmpty {
//                    break
//                }
//                player.cards.append( cards.first!)
//                cards.removeFirst()
//                var tempSum = player.cards.reduce(0) { $0 + $1 }
//                if tempSum >= 12 {
//                    break
//                }
//            }
//            
//        }
//        
//        // 딜러의 차례
//        while true {
//            var tempSum = diller.cards.reduce(0) { $0 + $1 }
//            if tempSum + diller.showCard >= 17 {
//                break
//            }
//            
//            diller.cards.append( cards.first! )
//            cards.removeFirst()
//            
//            tempSum = diller.cards.reduce(0) { $0 + $1 }
//            if tempSum + diller.showCard > 21 {
//                answer += 2
//                close = true
//                break
//            }
//        }
//        
//        if !close {
//            
//            var playerSum = player.cards.reduce(0) { $0 + $1 }
//            var dillerSum = diller.cards.reduce(0) { $0 + $1 } + diller.showCard
//            
//            if playerSum > dillerSum {
//                answer += 2
//            } else if playerSum < dillerSum {
//                answer -= 2
//            }
//        }
//    }
//    
//    
//    return answer
//}
