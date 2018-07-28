//: [Previous](@previous)
/*:
 # Drawing Book
 
 [Hackerrank Link](https://www.hackerrank.com/challenges/drawing-book)
 */

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    
    // create array representing book pages
    var book: [Int] = []
    for i in 0...n {
        book.append(i)
    }
    // add empty last page if needed
    if n % 2 == 0 {
        book.append(0)
    }
    print(book)
    /// divide by 2 since 2 pages per open face
    /// cast to double & ceil to cover integer division and back to int
    /// divide by 2 since 2 pages per open face
    print(book.index(of: p))
    let turnsFromFront = Double(book.index(of: p)!) / 2.0
    let turnsFromBack = Double(book.reversed().index(of: p)!) / 2.0
    
    return turnsFromFront > turnsFromBack ? Int(turnsFromBack) : Int(turnsFromFront)
}

pageCount(n: 6, p: 5)

//: [Next](@next)
