//
//  CellView.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit
import Foundation

struct Position {
    var row: Int!
    var col: Int!
    
    
}
struct CellInfo {
    var margin: CGFloat!
    var squareWidth: CGFloat!
}

class CellView: UIView {
    
    
    init(frame: CGRect, color: UIColor){
        super.init(frame: frame)
        drawCell(cellSize: frame.width, color: color.cgColor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawCell(cellSize: CGFloat, color: CGColor ){
        
        let cell = UIView(frame: self.frame)
        let maskLayer = CAShapeLayer()
        
        maskLayer.frame = cell.bounds
        maskLayer.path = UIBezierPath(rect: cell.bounds).cgPath
        maskLayer.opacity = 0.7
        cell.layer.mask = maskLayer
        
        let borderLayer = CAShapeLayer()
        borderLayer.path = maskLayer.path
        borderLayer.fillColor = color
        borderLayer.strokeColor = UIColor.black.cgColor
        borderLayer.lineWidth = 2
        borderLayer.frame = cell.bounds
        self.layer.addSublayer(borderLayer)
     
   
        
    }
    
   


}
