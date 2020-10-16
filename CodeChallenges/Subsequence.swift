//
//  Subsequence.swift
//  CodeChallenges
//
//  Created by Frank McAuley on 10/16/20.
//

import Foundation

class Subsequence {
    func findLongestSubsequenceIn(_ str: String, given: [String]) -> String {
        var longestStr = ""
        var returnValue = ""
        for x in given {
            if x.count > str.count {
                break
            }
            
            var i = 0
            var j = 0
            while i < x.count && j < str.count {
                
                let subIndex = x.index(x.startIndex, offsetBy: i)
                let strIndex = str.index(str.startIndex, offsetBy: j)
                
                //the str does not contain a char from x then it's not a subSequence
                if !str.contains(x[subIndex]) {
                    break
                }
                
                if x[subIndex] == str[strIndex] {
                    let placeHolder = String(x[subIndex])
                    longestStr += placeHolder
                    i += 1
                    j += 1
                } else {
                    j += 1
                }
            }
            
            if longestStr.count > returnValue.count {
                returnValue = longestStr
            }
            longestStr = ""
        }
        
        return returnValue
    }
}
