//: [Previous](@previous)

import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */
    
    
    var costs: [Int] = [-1]
    
    for k in keyboards {
        for d in drives {
            if k+d <= b {
                costs += [k+d]
            }
        }
    }
    
    return costs.max()!
    
}

getMoneySpent(keyboards: [3,1], drives: [5,2,8], b: 10)
//: [Next](@next)
