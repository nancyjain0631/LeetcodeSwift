class Solution {
//     https://developer.apple.com/documentation/swift/array/enumerated()
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
//         dictionary will act as Hashmap, for storing index and values
        var dict: [Int: Int] = [Int: Int]()
        
        for (i, n) in nums.enumerated() {
//         value will be the value in key, value pair(dict) and value  = dict[target-n]'s value
            if let value = dict[target - n] { return [value, i] }
            
            dict[n] = i
        }
        return []
    }
}
