// Leetcode link: https://leetcode.com/problems/palindrome-number/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
//         Idea is to reverse the number then compare x with reveredNum
         x < 0 ? false : checkPalindrome(x) == x
    }
    
    func checkPalindrome(_ x: Int) -> Int {
        var reversedNum: Int
        var rem: Int = 0
        var copyX = x
        while(copyX != 0){
            rem = rem * 10
            rem = rem + (copyX % 10)
            copyX = copyX / 10
        }
        return rem
    }  
}
