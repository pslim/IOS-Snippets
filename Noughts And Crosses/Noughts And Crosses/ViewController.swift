//
//  ViewController.swift
//  Noughts And Crosses
//
//  Created by Paige Lim on 2015-11-01.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let winningCombinations = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]
    
    var gameActive = (Bool)()
    var gameState = [Int]()
    
    var activePlayer = (Int)() // 1 = noughts, 2 = crosses
    
    @IBOutlet var button: UIButton!
    @IBOutlet var gameOverLabel: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    
    @IBAction func pressedPlayAgainButton(sender: AnyObject) {
        setUpGame()
        
        var buttonToClear : UIButton
        
        for var i = 0; i < 9; i++ {
            buttonToClear = view.viewWithTag(i) as! UIButton
            buttonToClear.setImage(nil, forState: .Normal)
        }
        
    }
    
    @IBAction func buttonPresed(sender: AnyObject) {
        
        if gameState[sender.tag] == 0 && gameActive {
            gameState[sender.tag] = activePlayer
            addGamePiece(sender)
            checkForWinner()
            checkForDraw()
        }
    }
    
    func addGamePiece(sender: AnyObject) {
        if activePlayer == 1 {
            sender.setImage(UIImage(named: "nought.png"), forState: .Normal)
            activePlayer = 2
        } else if activePlayer == 2 {
            sender.setImage(UIImage(named: "cross.png"), forState: .Normal)
            activePlayer = 1
        }
    }
    
    func checkForWinner() {
        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[0]] == gameState[combination[2]] {
                
                gameActive = false
                
                if gameState[combination[0]] == 1 {
                    gameOverLabel.text = "Noughts have won!"
                } else {
                    gameOverLabel.text = "Crosses have won!"
                }
                
                endGame()
            }
        }
    }
    
    func checkForDraw() {
        if gameActive {
            gameActive = false
            
            for buttonState in gameState {
                if buttonState == 0 {
                    gameActive = true
                }
            }
            
            if gameActive == false {
                gameOverLabel.text = "It's a draw"
                endGame()
            }
        }
    }
    
    func endGame() {
        gameOverLabel.hidden = false
        playAgainButton.hidden = false;
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.gameOverLabel.center = CGPointMake(self.gameOverLabel.center.x + 500, self.gameOverLabel.center.y)
            
            self.playAgainButton.center = CGPointMake(self.playAgainButton.center.x + 500, self.playAgainButton.center.y)
        })
    }
    
    func hideViews() {
        gameOverLabel.hidden = true;
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        playAgainButton.hidden = true;
        playAgainButton.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
    }
    
    func setUpGame() {
        gameState = [
            0, 0, 0,
            0, 0, 0,
            0, 0, 0
        ]
        gameActive = true
        activePlayer = 1
        hideViews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

