//: [Previous](@previous)

import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    
    var catADist: Int = abs(z-x)
    var catBDist: Int = abs(z-y)
    
    if catADist < catBDist {
        return "Cat A"
    } else if catADist > catBDist {
        return "Cat B"
    } else {
        return "Mouse C"
    }
    
}

catAndMouse(x: 1, y: 1, z: 3);


//: [Next](@next)
