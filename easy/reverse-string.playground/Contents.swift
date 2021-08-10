func reverseString1(_ s: inout [Character]) {
    var index = s.endIndex
    while index != s.startIndex {
        print(s[s.index(before: index)])
        index = s.index(before: index)
    }
}

var cS: [Character] = ["h","e","l","l","o"]

func reverseString(_ s: inout [Character]) {
        var y = s.index(before: s.endIndex)
        var x = s.startIndex
        while x <= y {
            var t = s[x]
            s[x] = s[y]
            s[y] = t
            
            x = s.index(after: x)
            y = s.index(before: y)
        }
        print(s)
    }
reverseString(&cS)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var x = 0
    var y = x+1
    while y < nums.count{
        if nums[x] == nums[y]{
            nums.remove(at: y)
        }
        index += 1
    }
    print(nums)
    return nums.count
 }
var d = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&d)
