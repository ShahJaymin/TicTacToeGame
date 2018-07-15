//
//  SecondView.swift
//  TicTacToeGame
//
//  Created by Raj Shah on 12/9/16.
//  Copyright © 2016 Jaymin Shah. All rights reserved.
//

import UIKit
class SecondView: UIViewController{
    var countCross = 0
    var countNought = 0
   var count = 0
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningcombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var gameIsActive = true

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    
    @IBOutlet weak var b7: UIButton!
    
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b8: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var cross: UILabel!
    @IBOutlet weak var nought: UILabel!
    
    @IBAction func Action(_ sender: AnyObject) {
         
        if(gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
            if(activePlayer == 1)
            {
                sender.setImage(UIImage(named: "o.png"), for: UIControlState())
                activePlayer = 2
                count = count + 1
            }
            
            else{
                sender.setImage(UIImage(named: "x.png"), for: UIControlState())
                activePlayer = 1
                count = count + 1
            }
            
        }
        
        
        
        for combination in winningcombination
        {
            
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                gameIsActive = false
                if gameState[combination[0]] == 1
                {
                    nought.text = "NOUGHT WON"
                    countNought = countNought + 1
                    label.text = "NOUGHT HAS WON!!!"
                   nought.text = "\(countNought)"
                    gameIsActive = false
                    b1.isHidden = true
                    b2.isHidden = true
                    b3.isHidden = true
                    b4.isHidden = true
                    b5.isHidden = true
                    b6.isHidden = true
                    b7.isHidden = true
                    b8.isHidden = true
                    b9.isHidden = true
               
                    
                }
              
                    
                else if(gameIsActive == false)
                {
                    cross.text = "CROSS WON"
                    countCross = countCross + 1
                    label.text = "CROSS HAS WON!!!"
                    cross.text = "\(countCross)"
                    gameIsActive = false
                }
                
            label.isHidden = false
                b1.isHidden = true
                b2.isHidden = true
                b3.isHidden = true
                b4.isHidden = true
                b5.isHidden = true
                b6.isHidden = true
                b7.isHidden = true
                b8.isHidden = true
                b9.isHidden = true
            
            

            }
            else if(count == 9 && gameIsActive == true){
                label.isHidden=false
                label.text = "Draw!!!"
                
            }
            

            

            
            
        }
       
        

    }
 
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBAction func playAgain(_ sender: AnyObject) {
       gameState = [0,0,0,0,0,0,0,0,0]
       
        gameIsActive = true
        activePlayer = 1
        count = 0
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        b4.isHidden = false
        b5.isHidden = false
        b6.isHidden = false
        b7.isHidden = false
        b8.isHidden = false
        b9.isHidden = false
        
        label.isHidden = true
        for i in 1...9
        {
          let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
            
        }

        
    }
    
    @IBOutlet weak var ResetButton: UIButton!
    
   
    @IBAction func Reset(_ sender: AnyObject) {
        
        countNought = 0
        nought.text = "\(countNought)"
        countCross = 0
        cross.text = "\(countCross)"
        gameState = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        
    
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        b4.isHidden = false
        b5.isHidden = false
        b6.isHidden = false
        b7.isHidden = false
        b8.isHidden = false
        b9.isHidden = false
        label.isHidden = true
        for i in 1...9
        {
          let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
            
        }

    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
