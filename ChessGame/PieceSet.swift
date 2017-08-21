//
//  PieceSet.swift
//  ChessGame
//
//  Created by TTung on 3/9/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import Foundation
import UIKit

class PieceSet {
    
    var pieceOrder = [PieceType]()
    var pieceControllers = [PieceController]()
    var color: PieceColor!
    var rowTotal: Int!
    var colTotal: Int!
    var width: CGFloat!
    
    init(color: PieceColor, rowTotal: Int, colTotal: Int, width: CGFloat) {
        pieceOrder.append(contentsOf: [.Rook, .Knight, .Bishop, .Queen,.King,.Bishop,.Knight,.Rook])
        self.color = color
        self.rowTotal = rowTotal
        self.colTotal = colTotal
        self.width = width
    }
    func getPieceAt(position: Position) -> Piece? {
        
        for pieceController in self.pieceControllers{
            if (pieceController.pieceModel.placeAt.row == position.row && pieceController.pieceModel.placeAt.col == position.col){
                return pieceController.pieceModel
            }
        }
        return nil
    }
    
    func createPieceWidth(type: PieceType, color: PieceColor, at position: Position) -> Piece{
        let currentPiece: Piece!
        switch type {
        case .Queen:
            currentPiece = Queen(pieceColor: color, at: position)
            break
        default:
            currentPiece = Pawn(pieceColor: color, at: position)
            break
        }
        return currentPiece
    }
    
}
