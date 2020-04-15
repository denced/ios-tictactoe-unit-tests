//
//  GameBoard.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

//enum GameBoardError: Error, Equatable {
//    case invalidSquare
//}
//
//typealias Coordinate = (x: Int, y: Int)

struct GameBoard {
//    
//    enum Position {
//        case topLeft
//        case topCenter
//        case topRight
//        case middleLeft
//        case middelCenter
//        case middleRight
//        case bottom
//    }
    
    enum Mark: Equatable {
        case x
        case o
        
        var stringValue: String {
            switch self {
            case .x: return "X"
            case .o: return "O"
            }
        }
    }
    
    private enum Square: Equatable {
        case filled(Mark)
        case empty
    }
    
    
    
    private var squares = Array(repeating: Square.empty, count: 9)
    // a subscript function allows me to access objects using squared brackets.
    // ehatever is the paeameter in this function wll serve as the brakes input
    // eg. board[0,0] - > mark?
    
    subscript(coordinate: Coordinate) -> Mark? {
        let square = squares[arrayIndex(for: coordinate)]
        if case let Square.filled(mark) = square {
            return mark
        } else {
            return nil
        }
    }
    
    mutating func place(mark: Mark, on square: Coordinate) throws {
        if self[square] != nil {
            throw GameBoardError.invalidSquare
        }
        // find the index (0) from the given coordinate (0,0)
        squares[arrayIndex(for: square)] = .filled(mark)
    }
    
    var isFull: Bool {
        for square in squares {
            if square == .empty {
                return false
            }
        }
        return true
    }
    
    private func arrayIndex(for square: Coordinate) -> Int {
        return square.y * 3 + square.x
    }
    
}

enum GameBoardError: Error, Equatable {
    case invalidSquare
}

typealias Coordinate = (x: Int, y: Int)
