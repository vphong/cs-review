/*:
 # Sock Merchant
 
 [Hackerrank Link](https://www.hackerrank.com/challenges/sock-merchant/problem)
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var numPairs = 0
    
    // initialize count dict
    var count: [Int: Int] = [:]
    let colors = Array(Set(ar))
    for color in colors {
        count[color] = 0
    }
    
    // fill count dict
    for i in 0..<ar.count {
        count[ar[i]]! += 1
    }
    print(count)
    
    for (k, e) in count {
        var elt = e
        while elt > 0 {
            if elt >= 2 {
                numPairs += 1
            }
            elt -= 2
            print("k: \(k), e: \(elt)")
            print(elt)
            print("numPairs: \(numPairs)")
        }
    }
    
    return numPairs
    
}

// sample input
sockMerchant(n: 20, ar: [4, 5, 5, 5, 6, 6, 4, 1, 4, 4, 3, 6, 6, 3, 6, 1, 4, 5, 5, 5])

