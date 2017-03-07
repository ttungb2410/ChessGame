//
//  GameManager.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class GameManager: NSObject {

    var kingChessBoard: KingChessBoard?
    
    override init(){
        self.kingChessBoard = KingChessBoard()
    }
    
    func drawBoardToViewController (_ viewcontroller:UIViewController, width:CGFloat){
        let boardView = KingChessBoard(frame: CGRect(x: 0, y: 64, width: width, height: width))

        boardView.drawBoard(size: width)
        self.kingChessBoard?.addSubview(boardView)
        viewcontroller.view.addSubview(boardView)
        
        let piece = Pawn(frame:CGRect(x: 0, y: 64, width: width , height: width), position:(1,2))
        piece.backgroundColor = UIColor.red
        viewcontroller.view.addSubview(piece)
    }

    
}
