//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // code the multiple ways a user can win
    // 3 in a row
    // 3 in a column
    // 2 diagonals
    
    
    // test wether all top positions have the same mark
    /// xxx
    ///---
    ///---
    ///
    ///000
    ///---
    ///---
    // get top coordinates
    let topPositions = [(0,0), (1,0), (2,0)]
    //map -> takes an array and itterates the array and transforms the items into something else
    //reduce
    //filter
    // tansform top coordinates to marks
    let topMarks = topPositions.map { topPosition -> GameBoard.Mark? in
        return board[topPosition]
    }
    // check ll the marks
    var playerDidWin = true
    for possibleMark in topMarks {
        
        if let mark = possibleMark {
            // ther is a Mark
            if mark != player {
                playerDidWin = false
                // could be that the palyer has won
            }
            
        } else {
            // if the square is empty , the player didn't win
            playerDidWin = false
            break
        }
    }
    
    
    
    return playerDidWin
}
