//
//  BoardView.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class BoardView: UIView {

    var cell: NSMutableArray?
    var widthBoard: CGFloat!
    var heightBoard: CGFloat!
    var cellSize: CGFloat!
    var whiteBox = false
    
     override init(frame: CGRect){
        self.widthBoard = frame.width
        self.heightBoard = frame.width
        self.cellSize = frame.width/8
        super.init(frame: frame)
        self.cell = NSMutableArray()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawBoard(size: CGFloat){
        self.widthBoard = size
        self.heightBoard = size
        
        for indexCot in 0..<8{
            for indexHang in 0..<8{
                let board = CellView(frame: CGRect(x: 0, y: 64, width: size, height: size))
                board.drawCellWhite(x: CGFloat(indexHang)*cellSize, y: CGFloat(indexCot)*cellSize, width: cellSize , height: cellSize)
                    whiteBox = false
                self.cell?.add(board)
                self.addSubview(board)
            }
        }
    }
}

class KingChessBoard : BoardView{
  
    override func drawBoard(size: CGFloat) {
        self.widthBoard = size
        self.heightBoard = size
        
        for indexCot in 0..<8{
            for indexHang in 0..<8{
                let board = CellView(frame: CGRect(x: 0, y: 64, width: size, height: size))
                if whiteBox == true{
                    board.drawCellWhite(x: CGFloat(indexHang)*cellSize, y: CGFloat(indexCot)*cellSize, width: cellSize , height: cellSize)
                    whiteBox = false
                    self.cell?.add(board)
                    self.addSubview(board)
                }
                else {
                    board.drawCellBlack(x: CGFloat(indexHang)*cellSize, y: CGFloat(indexCot)*cellSize, width: cellSize , height: cellSize)
                    whiteBox = true
                    self.cell?.add(board)
                    self.addSubview(board)
                }
            }
            whiteBox = !whiteBox
        }
    }

    }
//aaaa
