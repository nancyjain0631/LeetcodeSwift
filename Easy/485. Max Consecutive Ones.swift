// Leetcode link: https://leetcode.com/problems/max-consecutive-ones/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count: Int = 0
        var maxValue: Int = 0
        for num in nums {
            if (num == 1) {
                count = count+1
                maxValue = max(maxValue, count)
            } else {
                count = 0
            }
        }
        return maxValue
    }
}
