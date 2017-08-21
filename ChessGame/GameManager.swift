//
//  GameManager.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit
import Foundation

class GameManager {

    
    var pieceSets: [PieceSet]!
    var mainView: UIView!
    

    func initGame(viewcontroller: UIViewController, size: CGFloat){
        
        self.pieceSets = [PieceSet]()
        let boardView = BoardView(frame: CGRect(x: 0, y: viewcontroller.view.bounds.size.height / 2 - size / 2, width: size, height: size), rowTotal: 8, colTotal: 8)
        viewcontroller.view.addSubview(boardView)
        self.mainView = boardView
        
        let width = self.mainView.frame.width/CGFloat(8)
        
    }
    
    
    
}
