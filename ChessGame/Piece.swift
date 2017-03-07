//
//  Piece.swift
//  ChessGame
//
//  Created by TTung on 3/7/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class Piece: UIView {
    
    var position:(row: Int, col: Int)!
    var view: UIView?
    
    init(frame: CGRect, position: (Int,Int)) {
        super.init(frame: CGRect(x: 0, y: 64, width: frame.width/8, height: frame.height/8))
        self.position = position
        self.setPosition(frame: frame)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPosition(frame: CGRect){
        
        self.frame = CGRect(x: CGFloat(self.position.row)*frame.width/8, y: CGFloat(self.position.col)*frame.width/8, width: frame.width/8, height: frame.height/8)
        self.center = CGPoint(x: frame.width/8*CGFloat(self.position.row), y: frame.width/8*CGFloat(self.position.col))
    }
    
    func getPieceLabel(){
        
    }
  
}

//class King: Piece{
//    
//}
//
//class Queen: Piece{
//    
//}
//
//class Knight: Piece{
//    
//}
//
//class Bishop: Piece{
//    
//}
//
//class Rook: Piece{
//    
//}

class Pawn: Piece{
    override func getPieceLabel() {
        print("pawn")
    }
}
