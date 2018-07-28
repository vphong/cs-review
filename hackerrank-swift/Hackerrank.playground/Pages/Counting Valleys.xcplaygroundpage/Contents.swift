//: [Previous](@previous)
/*:
 # Counting Valleys
 
 [Hackerrank Link](https://www.hackerrank.com/challenges/counting-valleys/problem)
 */
import Foundation
func countingValleys(n: Int, s: String) -> Int {
    
    // 1. convert s to numerical altitude level
    // 2. count # of times total altitude changed from positive to negative
    var altitude = 0
    var valleys = 0
    for step in s {
        let previousAltitude = altitude
        if step == "U" {
            altitude += 1
        }
        else if step == "D" {
            altitude -= 1
        }
        if previousAltitude >= 0 && altitude < 0 {
            valleys += 1
        }
    }
    
    return valleys
}

countingValleys(n: 8, s: "DDUUUUDD")

//: [Next](@next)
