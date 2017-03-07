//
//  ViewController.swift
//  ChessGame
//
//  Created by TTung on 3/6/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameManager: GameManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gameManager = GameManager()
        self.gameManager?.drawBoardToViewController(self, width: self.view.bounds.size.width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

