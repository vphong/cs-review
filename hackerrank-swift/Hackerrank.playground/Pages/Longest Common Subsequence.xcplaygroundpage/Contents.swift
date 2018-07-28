//: [Previous](@previous)

/*:
 
 # Longest Common Subsequence (Dynamic Programming
 [Hackerrank Link](https://www.hackerrank.com/challenges/dynamic-programming-classics-the-longest-common-subsequence/problem)
 */

func lcsLengthHelper(a: [Int], b: [Int]) -> [[Int]] {
    
    // table of |CS|
    let m = a.count
    let n = b.count
    
    var c: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
    
    for i in 0..<m {
        for j in 0..<n {
            
            if a[i] == b[j] {
                c[i+1][j+1] = c[i][j]+1
            }
                
            else {
                c[i+1][j+1] = max( c[i+1][j], c[i][j+1] )
            }
            
        }
    }
    
    
    return c /// |LCS|
}


// Complete the longestCommonSubsequence function below.
func longestCommonSubsequence(a: [Int], b: [Int]) -> [Int] {
    
    let c = lcsLengthHelper(a: a, b: b)
    
    var i = a.count
    var j = b.count
    
    
    // begin backtracking algorithm through lcs table
    var lcs: [Int] = []
    
    while i >= 1 && j >= 1 {
        // no change -> no new char added to lcs.
        if c[i][j] == c[i][j - 1] {
            j -= 1
        }
        // no change -> no new char added to lcs.
        else if c[i][j] == c[i - 1][j] {
            i -= 1
        }
        else {
            i -= 1
            j -= 1
            lcs.append(a[i])
        }
    }
    // backtracking -> reversed string
    lcs.reverse()
    return lcs
    
}
