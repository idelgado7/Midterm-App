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
        Outcome = Int(arc4random_uniform(2))
        if Outcome == 1 {
            Result.text! = "Heads"
        } else {
            Result.text! = "Tails"
        }
    }
    
    // MARK: - Dice Rolling @IBActions
    @IBAction func roll6SidedDice(_ sender: UIButton) {
        numberOfPermutations = 6
        randomize()
    }
    
    @IBAction func roll4SidedDice(_ sender: UIButton) {
        numberOfPermutations = 4
        randomize()
    }
    
    @IBAction func roll20SidedDice(_ sender: UIButton) {
        numberOfPermutations = 20
        randomize()
    }
    
    @IBAction func roll10SidedDice(_ sender: UIButton) {
        numberOfPermutations = 10
        randomize()
    }
    
    @IBAction func rollXsidedDice() {
        XNumberOfSides()
    }
    
    // MARK: - Methods
    // Randomize Our Die Rolls
    func randomize() {
        Outcome = 1 + Int(arc4random_uniform((UInt32(numberOfPermutations))))
        Result.text = "\(Outcome)"
    }
    
    
    func XNumberOfSides(){
        
        // Sets the title of the alert
        let alertController = UIAlertController(title: "How many sides?", message: "Enter Number of Sides", preferredStyle: .alert)
        
        // The Confirm Action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            // Getting the input values from user
            let NumberOfSides = alertController.textFields?[0].text

            let temp = Int(NumberOfSides!)
            self.Result.text = "\(1 + arc4random_uniform(UInt32(temp!)))"
            
            
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
