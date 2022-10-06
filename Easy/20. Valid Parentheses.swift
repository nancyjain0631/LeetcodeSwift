// Leetcode link: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
//         if string contains odd number of elements, return false
        guard s.count % 2 == 0 else { return false }
//         create an empty stack of character type
        var st: [Character] = []
        var ans: Bool = true
        for ch in s {
            if ch == "(" || ch == "{" || ch == "[" {
                st.append(ch)
            } else {
                switch ch {
                    case ")": ans = st.popLast() == "("
                    case "}": ans = st.popLast() == "{"
                    case "]": ans = st.popLast() == "["
                    default: ans = false
                }
            }
            if (ans == false) { return false }
        }
        if (st.count > 0) { return false } 
        return ans
    }
}
