//
//  RandomObjectsViewController.swift
//  Midterm App
//
//  Created by Irving Delgado on 3/12/18.
//  Copyright © 2018 Irving Delgado. All rights reserved.
//

import UIKit

class RandomObjectsViewController: UIViewController {

    var Outcome: Int = 0
    var FlipResult = ""
    var numberOfPermutations: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - @IBOutlets
    @IBOutlet weak var Result: UILabel!
    
    
    // MARK: - Coin Flipping @IBActions
    @IBAction func flipCoin(_ sender: UIButton) {
        numberOfPermutations = 2
        showFlipResult()
    }
    
    // MARK: - Dice Rolling @IBActions
    @IBAction func roll6SidedDice(_ sender: UIButton) {
        numberOfPermutations = 6
        rollDice()

    }
    
    @IBAction func roll4SidedDice(_ sender: UIButton) {
        numberOfPermutations = 4
        rollDice()

    }
    
    @IBAction func roll20SidedDice(_ sender: UIButton) {
        numberOfPermutations = 20
        rollDice()

    }
    
    @IBAction func roll10SidedDice(_ sender: UIButton) {
        numberOfPermutations = 10
        rollDice()

    }
    
    @IBAction func rollXsidedDice() {
        XNumberOfSides()
    }
    
    // MARK: - Methods
    // Our Random Elements
    
    // Method to roll a known number of dice
    func rollDice() {
        randomize()
        showRollResult()
    }
    
    // Method to get the actual outcome of the die roll, returns in int.
    func randomize() {
        Outcome = 1 + Int(arc4random_uniform((UInt32(numberOfPermutations))))
        
    }
    
    // Method to show the result of the coin flip in a UI Alert
    func showFlipResult() {
        randomize()
        if Outcome == 1 {
            Result.text! = "Heads"
            FlipResult = "Heads"
        } else {
            Result.text! = "Tails"
            FlipResult = "Tails"
        }
        let message = FlipResult
        let alert = UIAlertController(title:"Flip Result", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // Method to show the result of a die roll in a UI Alert
    func showRollResult() {
        randomize()
        Result.text = "\(Outcome)"
        let message = "\(Outcome)"
        let alert = UIAlertController(title:"Roll Result", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    // Method for an x-sided die roll
    func XNumberOfSides(){
        
        // Sets the title of the alert
        let alertController = UIAlertController(title: "How many sides?", message: "Enter Number of Sides", preferredStyle: .alert)
        
        // The Confirm Action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            // Getting the input values from user
            let NumberOfSides = alertController.textFields?[0].text

            let temp = Int(NumberOfSides!)
            let inter = 1 + arc4random_uniform(UInt32(temp!))
            self.Result.text = "\(inter)"
            let message = "\(inter)"
            let alert = UIAlertController(title:"Roll Result", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        // The cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }

        // Adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Number of Sides"
            textField.keyboardType = .numberPad
        }
        
        // Adding Actions to dialog box
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        // Presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
        

    }
}
