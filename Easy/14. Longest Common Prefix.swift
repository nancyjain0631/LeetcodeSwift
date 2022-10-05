// Leetcode link : https://leetcode.com/problems/longest-common-prefix/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // var str: [String] = strs
        // str.sort()
        if strs.isEmpty { return "" }
        if strs.count == 1 { return strs[0] }
        let str = strs.sorted()
        let n = str.count
        var prefix = ""
        for (ch1,ch2) in zip(str.first!, str.last!) {
            if(ch1 == ch2) {
                prefix += String(ch1)
            } else {
                break
            }
        }
        return prefix
    }
}
