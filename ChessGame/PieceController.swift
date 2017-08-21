//
//  PieceController.swift
//  ChessGame
//
//  Created by TTung on 3/9/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import Foundation

class PieceController {
    
    var pieceModel: Piece!
    var pieceView: PieceView!
    
    init(pieceModel: Piece, cellInfo: CellInfo) {
        self.pieceModel = pieceModel
        
        self.pieceView = PieceView(pieceColor: pieceModel.pieceColor, at: pieceModel.placeAt, type: pieceModel.pieceType, cellInfo: cellInfo)
        
    }
}
