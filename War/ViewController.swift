//
//  ViewController.swift
//  War
//
//  Created by Sophian Bensaou on 2/14/15.
//  Copyright (c) 2015 ___sophian___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playRoundTapped(sender: UIButton) {
        // Randomize a number for the first imageview
        let firstRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Randomize a number for the second imageview
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // Set the first card image view to the asset corresponding to the random number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Set the second card image view to the asset corresponding to the random number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
            
        } else if firstRandomNumber == secondRandomNumber {
            // TODO: numbers are equal
            
        } else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
            
        }
    }
}