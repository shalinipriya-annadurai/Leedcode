import UIKit

func longestPalindrome(_ s: String) -> String {
    var maxString = ""
    
    for i in 0..<s.count {
        for j in i..<s.count{
            let start = s.index(s.startIndex, offsetBy:i)
            let end = s.index(s.startIndex, offsetBy:j)
            let sub = s[start...end]
            print(sub)
            //Check Palindrom
            var flag = true
            for k in 0..<((j-i+1)/2) {
                let s = sub.index(sub.startIndex, offsetBy:k)
                let e = sub.index(sub.startIndex, offsetBy:(j-i-k))
                print(k, j-i-k)
                if(sub[s] != sub[e]){
                    flag = false
                }
            }
            if flag == true && maxString.count < sub.count{
                maxString = String(sub)
            }
        }
    }
    return maxString
}
//longestPalindrome("ab")

func longestPalindrome1(_ s: String) -> String {
    var maxString = ""
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: s.count), count: s.count)

    for count in 0..<s.count {
        for i in 0..<s.count-count{
            let start = s.index(s.startIndex, offsetBy:i)
            let end = s.index(start, offsetBy:count)
            let sub = s[start...end]
            print(sub)
            var flag = false
            
            if count <= 2 {
                if s[start] == s[end] {
                    matrix[i][i+count] = 1
                    flag = true
                }
            } else {
                if s[start] == s[end] &&  matrix[i+1][i+count-1] == 1{
                    matrix[i][i+count] = 1
                    flag = true
                }
            }
            
            if flag == true && maxString.count < sub.count {
                maxString = String(sub)
            }
        }
    }
    return maxString
}
longestPalindrome1("aa")

