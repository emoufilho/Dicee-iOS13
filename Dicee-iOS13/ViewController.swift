//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var resultRoll: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageView1.image = #imageLiteral()
        //diceImageView2.image = UIImage(named: "DiceTwo")
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        let numberRandomDice1 = Int.random(in: 0...5)
        let numberRandomDice2 = Int.random(in: 0...5)
        
        //diceImageView1.image = diceArray.randomElement()
        //diceImageView2.image = diceArray.randomElement()
        
        diceImageView1.image = diceArray[numberRandomDice1]
        diceImageView2.image = diceArray[numberRandomDice2]
        
        resultRoll.text = String((numberRandomDice1+1) + (numberRandomDice2+1))
        
        
    }
    

}

