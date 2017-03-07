//
//  CellView.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class CellView: UIView {

    var cellSize:CGFloat!
    
     override init(frame: CGRect){
        self.cellSize = frame.width/8
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawCellWhite(x: CGFloat, y:CGFloat, width: CGFloat , height: CGFloat){
        let cell = CAShapeLayer()
        
        cell.path = UIBezierPath(roundedRect: CGRect(x: x , y: y , width: cellSize , height: cellSize), cornerRadius: 0).cgPath
       
        self.layer.mask = cell
        
        let borderLayer = CAShapeLayer()
        borderLayer.path = cell.path
        borderLayer.fillColor = UIColor.gray.cgColor
        borderLayer.strokeColor = UIColor.black.cgColor

        borderLayer.lineWidth = 1
        self.layer.addSublayer(borderLayer)
     
   
        
    }
    
    func drawCellBlack(x: CGFloat, y:CGFloat, width: CGFloat , height: CGFloat){
        let cell = CAShapeLayer()
        
        cell.path = UIBezierPath(roundedRect: CGRect(x: x , y: y , width: cellSize , height: cellSize), cornerRadius: 0).cgPath
        cell.fillColor = UIColor.black.cgColor
        cell.opacity = 0.7
        self.layer.mask = cell
        
        let borderLayer = CAShapeLayer()
        borderLayer.path = cell.path
        borderLayer.fillColor = UIColor.gray.cgColor
        borderLayer.strokeColor = UIColor.black.cgColor
        
        borderLayer.lineWidth = 1
        self.layer.addSublayer(borderLayer)
        
        
        
    }


}
