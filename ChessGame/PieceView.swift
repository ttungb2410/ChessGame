//
//  PieceView.swift
//  ChessGame
//
//  Created by TTung on 3/9/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import Foundation
import UIKit

protocol PieceViewDelegate {
    func validMoves(destination: Position) -> Bool
    func getCurrentPlace() -> Position
    func setCurrentPlace(place: Position)
}

class PieceView: UIImageView{
    
    var delegate: PieceViewDelegate!
    var cellInfo: CellInfo!
    
    init(pieceColor: PieceColor, at position: Position, type: PieceType, cellInfo: CellInfo!){
        super.init(image: UIImage())
        self.isUserInteractionEnabled = true
        let image = self.initImage(type: type, pieceColor: pieceColor)
        self.image = image
        self.cellInfo = cellInfo
        self.frame = CGRect(x: cellInfo.margin + CGFloat(CGFloat(position.col)*cellInfo.squareWidth), y: cellInfo.margin + CGFloat(CGFloat(position.row)*cellInfo.squareWidth), width: cellInfo.squareWidth, height: cellInfo.squareWidth)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initImage(type: PieceType, pieceColor: PieceColor) -> UIImage{
        return UIImage(named: "\(pieceColor.rawValue)\(type.rawValue)")!

    }
    
    func calculateDestinationPosition(point: CGPoint) -> Position?{
        
        let col = Int(point.x/self.frame.width)
        let row = Int(point.y/self.frame.height)
      
        return Position(row: row, col: col)
    }
}
