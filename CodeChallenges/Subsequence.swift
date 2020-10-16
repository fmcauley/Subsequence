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
    
    func findLongestWithOrderedList(_ str: String, list: [String]) -> String {
        let orderedList = list.sorted {$0.count > $1.count}
        var longestStr = ""
        for x in orderedList {
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
            if longestStr.count > 0 {
                return longestStr
            }
            
        }
        return longestStr
    }
    
    func findLongestSubsequenceWithMapedString(_ str: String, list: [String]) -> String {
        
        //process str into a map
        var dict = [Character:[Int]]()
        
        for x in 0..<str.count {
            let strIndex = str.index(str.startIndex, offsetBy: x)
            if dict[str[strIndex]] == nil {
                dict[str[strIndex]] = [x]
            } else if dict[str[strIndex]] != nil {
                dict[str[strIndex]]?.append(x)
            }
        }
        
        // sort the list large to small
        let sortedList = list.sorted {$0.count > $1.count}
        var returnValue = ""
        for x in sortedList {
            for y in 0..<x.count {
                let xIndex = x.index(x.startIndex, offsetBy: y)
                let char = x[xIndex]
                
                if dict[char] == nil {
                    break
                }
                
                
                if dict[char] != nil {
                    returnValue += String(char)
                }
                
            }
            if returnValue.count == x.count {
                return returnValue
            }
        }
        
        return ""
    }
}
