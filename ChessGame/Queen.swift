//
//  Queen.swift
//  ChessGame
//
//  Created by TTung on 3/8/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import Foundation
import UIKit

class Queen: Piece{
    init(pieceColor: PieceColor, at position: Position) {
        super.init(pieceColor: pieceColor, type: .Queen, at: position)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
