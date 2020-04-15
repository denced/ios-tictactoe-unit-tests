//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by denis cedeno on 4/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
// import the app bundle
@testable import TicTacToe


class TicTacToeTests: XCTestCase {
    
    func testPlacingXOnEmptySquare() {
        // Place X on an empty square (0,0)
        // If the x was placed, I want to fetch the mark on (0,0)

        
        var board = GameBoard()
        // you want this to crash !
        // iam expecting an error.
        XCTAssertNoThrow(try! board.place(mark: .x, on: (0,0)))
//        XCTAssertThrowsError(try! board.place(mark: .x, on: (0,0)))
//        try! board.place(mark: .x, on: (0,0))
        
        
        // if I could fetch the mark, i want to make sure that mark is an x
        let markOnEmptySquare = board[(0,0)]!
        
        
        XCTAssert(markOnEmptySquare == .x, "the mark you jsut placed is different thn the mark requestde")
//        XCTAssert(markOnEmptySquare)
    }

//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
