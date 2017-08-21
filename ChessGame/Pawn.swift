//
//  Pawn.swift
//  ChessGame
//
//  Created by TTung on 3/9/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import Foundation
import UIKit

class Pawn: Piece {
    init(pieceColor: PieceColor, at position: Position) {
        super.init(pieceColor: pieceColor, type: .Pawn, at: position)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
