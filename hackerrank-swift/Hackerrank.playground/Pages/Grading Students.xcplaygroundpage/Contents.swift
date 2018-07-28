//: [Previous](@previous)

/*:
 # Grading Students
 
 [Hackerrank Link](https://www.hackerrank.com/challenges/grading/problem)
 */

func gradingStudents(grades: [Int]) -> [Int] {
    /*
     * Write your code here.
     */
    
    var g = grades
    
    for i in 0..<g.count {
        
        let nextMultiple = Int(ceil(Double(g[i])/5.0) * 5.0)
        if g[i] < 38 {
            continue
        }
        else if nextMultiple - g[i] < 3 {
            g[i] += nextMultiple - g[i]
        }
        
    }
    
    return g
}

//: [Next](@next)
