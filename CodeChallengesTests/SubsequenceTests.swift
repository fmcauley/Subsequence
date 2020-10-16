//
//  SubsequenceTests.swift
//  CodeChallengesTests
//
//  Created by Frank McAuley on 10/16/20.
//

import XCTest
@testable import CodeChallenges
class SubsequenceTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatSubsequenceIsNotNil() throws {
        let subsequence = Subsequence()
        XCTAssertNotNil(subsequence)
    }
    
    func testThatSubsequenceOfTestIsPresentInTests() {
        let subsequence = Subsequence()
        let output = subsequence.findLongestSubsequenceIn("Tests", given:["Test"])
        let expected = "Test"
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatStringOfAappllessWithSubsequenceOfAppleApplesAppReturnesApples() {
        let subsequence = Subsequence()
        let str = "Aapplless"
        let subs = ["Apple","Apples","App"]
        let output = subsequence.findLongestSubsequenceIn(str, given: subs)
        let expected = "Apples"
        
        XCTAssertEqual(output, expected)
    }
    
    func testGoogleExample() {
        let subsequence = Subsequence()
        let str = "abppplee"
        let subs = ["able", "ale", "apple", "bale", "kangaroo"]
        let output = subsequence.findLongestSubsequenceIn(str, given: subs)
        let expected = "apple"
        
        XCTAssertEqual(output, expected)
    }
    
    func testNegativeCase() {
        let subsequence = Subsequence()
        let str = "abppplee"
        let subs = ["kangaroo"]
        let output = subsequence.findLongestSubsequenceIn(str, given: subs)
        let expected = ""
        
        XCTAssertEqual(output, expected)
    }
    
    func testOptimizationWithOrderedListOfWords() {
        let subsequence = Subsequence()
        let str = "abppplee"
        let subs = ["able", "ale", "apple", "bale", "kangaroo"]
        let output = subsequence.findLongestWithOrderedList(str, list: subs)
        let expected = "apple"
        
        XCTAssertEqual(output, expected)
    }
}
