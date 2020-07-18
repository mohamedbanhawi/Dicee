//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet is a reference to a UI Element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // MARK: properties
    
    var leftDiceIndex = 0;
    
    let diceImageArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]; // constant
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        leftDiceIndex  = Int.random(in: 0..<6)
        print("leftDiceIndex is \(leftDiceIndex)")

        
        diceImageView1.image = diceImageArray[leftDiceIndex]
        
        diceImageView2.image = diceImageArray.randomElement()
        
    }
    
}

