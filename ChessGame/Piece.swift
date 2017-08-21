//
//  Piece.swift
//  ChessGame
//
//  Created by TTung on 3/7/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit
import Foundation

class Piece {
    
    
    var pieceColor: PieceColor!
    var pieceType: PieceType!
    var placeAt: Position!
    var cellInfo: CellInfo!
    
    init(pieceColor: PieceColor, type: PieceType, at position: Position){
     
        self.pieceColor = pieceColor
        self.pieceType = type
        self.placeAt = position
    }
    
    func iniImage(type: PieceType, pieceColor: PieceColor) -> UIImage{
        return UIImage(named:  "\(pieceColor.rawValue)\(type.rawValue)")!
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func getCurrentPlace() -> Position{
        return self.placeAt
    }
    
    func setCurrentPlace(place: Position){
        self.placeAt = place
    }
    
    func validMoves(destination: Position) -> Bool{
        return false
    }
}
