// Leetcode link: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func romanToInt(_ s: String) -> Int {
        var symbols: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L":50, "C": 100, "D": 500, "M": 1000]
        var sum = 0
        var prev = 0
        for ch in s {
            let charValue = symbols[ch] ?? 0
            if prev < charValue {
                sum -= prev
            } else {
                sum += prev
            }
            prev = charValue
        }
        sum += prev
        return sum
    }
}
