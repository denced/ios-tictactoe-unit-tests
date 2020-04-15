//
//  GameAITest.swift
//  TicTacToeTests
//
//  Created by denis cedeno on 4/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITest: XCTestCase {

    func testWinningConditionForXTopRow() {
        
        winningConditionForTopRow(mark: .x)
    }
    
    func testWinningConditionForOTopRow() {
        
        winningConditionForTopRow(mark: .o)
    }
    
    func winningConditionForTopRow(mark: GameBoard.Mark) {
        var board = GameBoard()
        //plcae o's on the top row
        XCTAssertNoThrow(try board.place(mark: mark, on: (0,0)))
        XCTAssertNoThrow(try board.place(mark: mark, on: (1,0)))
        XCTAssertNoThrow(try board.place(mark: mark, on: (2,0)))
        // x should win.
        let markPlayerDidWin = game(board: board, isWonBy: mark)
        XCTAssert(markPlayerDidWin)
    }
}
