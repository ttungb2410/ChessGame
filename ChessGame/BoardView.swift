//
//  BoardView.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit
import Foundation

class BoardView: UIView {

    var cell: [[CellView]]!

    
    init(frame: CGRect, rowTotal: Int, colTotal: Int){
      super.init(frame: frame)
      self.cell = [[CellView]]()
      self.drawBoard(rowTotal: rowTotal, colTotal: colTotal)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawBoard(rowTotal: Int, colTotal: Int){
        var cellColor = UIColor()
        let cellSize = self.frame.width/CGFloat(rowTotal)
        for indexRow in 0..<rowTotal{
            for indexCol in 0..<colTotal{
                if ((indexCol + indexRow) % 2 == 0){
                    cellColor = UIColor.gray
                }else{
                    cellColor = UIColor.black
                }
                let cell = CellView(frame: CGRect(x: CGFloat(indexRow)*cellSize, y: CGFloat(indexCol)*cellSize, width: cellSize, height: cellSize), color: cellColor)
                self.addSubview(cell)
            }
        }
    }
    
    }

