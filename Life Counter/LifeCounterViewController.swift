//
//  LifeCounterViewController.swift
//  Midterm App
//
//  Created by Irving Delgado on 3/6/18.
//  Copyright © 2018 Irving Delgado. All rights reserved.
//

import UIKit

class LifeCounterViewController: UIViewController {
    var lifetotal1 = 0
    var lifetotal2 = 0
    var energy1 = 0
    var energy2 = 0
    var poison1 = 0
    var poison2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
    }
    
    // MARK: - IBOutlets
    @IBOutlet weak var Player1Life: UILabel!
    @IBOutlet weak var Player2Life: UILabel!
    @IBOutlet weak var Player1Energy: UILabel!
    @IBOutlet weak var Player2Energy: UILabel!
    @IBOutlet weak var Player1Poison: UILabel!
    @IBOutlet weak var Player2Poison: UILabel!

    // MARK: - IBActions
    @IBAction func startNewGame() {
        restartGame()
    }
    // MARK: - IBActions for Player 1
    @IBAction func increasePlayer1Life(_ sender: UIButton) {
        lifetotal1 += 1
        Player1Life.text = "\(lifetotal1)"

    }
    @IBAction func decreasePlayer1Life(_ sender: UIButton) {
        lifetotal1 += -1
        Player1Life.text = "\(lifetotal1)"

    }
    
    @IBAction func increasePlayer1Energy(_ sender: UIButton) {
        energy1 += 1
        Player1Energy.text = "\(energy1)"
    }
    
    @IBAction func decreasePlayer1Energy(_ sender: UIButton) {
        energy1 += -1
        Player1Energy.text = "\(energy1)"
        if energy1 < 0 {
            energy1 += 1
            Player1Energy.text = "\(energy1)"
        }
    }
    
    @IBAction func increasePlayer1Poison(_ sender: UIButton) {
        poison1 += 1
        Player1Poison.text = "\(poison1)"
    }
    
    @IBAction func decreasePlayer1Poison(_ sender: UIButton) {
        poison1 += -1
        Player1Poison.text = "\(poison1)"
        if poison1 < 0 {
            poison1 += 1
            Player1Poison.text = "\(poison1)"
        }
    }
    
    // FIXME: - Set Player 1 Life
    @IBAction func setLifePlayer1(_ sender: UIButton) {
        setLife1()
    }
    
    
    // MARK: - IBActions for Player 2
    @IBAction func increasePlayer2Life(_ sender: UIButton) {
        lifetotal2 += 1
        Player2Life.text = "\(lifetotal2)"
    }
    @IBAction func decreasePlayer2Life(_ sender: UIButton) {
        lifetotal2 += -1
        Player2Life.text = "\(lifetotal2)"
    }
    
    @IBAction func increasePlayer2Energy(_ sender: UIButton) {
        energy2 += 1
        Player2Energy.text = "\(energy2)"
    }
    
    @IBAction func decreasePlayer2Energy(_ sender: UIButton) {
        energy2 += -1
        Player2Energy.text = "\(energy2)"
        if energy2 < 0 {
            energy2 += 1
            Player2Energy.text = "\(energy2)"
        }
    }
    
    @IBAction func increasePlayer2Poison(_ sender: UIButton) {
        poison2 += 1
        Player2Poison.text = "\(poison2)"
    }
    
    @IBAction func decreasePlayer2Poison(_ sender: UIButton) {
        poison2 += -1
        Player2Poison.text = "\(poison2)"
        if poison2 < 0 {
            poison2 += 1
            Player2Poison.text = "\(poison2)"
        }
    }
    
    @IBAction func setLifePlayer2(_ sender: UIButton) {
        setLife2()
    }
    
    // MARK: - Methods
    func restartGame() {
        lifetotal1 = 20
        lifetotal2 = 20
        energy1 = 0
        energy2 = 0
        poison1 = 0
        poison2 = 0
        updateLabels()
    }
    
    func updateLabels() {
        Player1Life.text = "\(lifetotal1)"
        Player2Life.text = "\(lifetotal2)"
        Player1Energy.text = "\(energy1)"
        Player2Energy.text = "\(energy2)"
        Player1Poison.text = "\(poison1)"
        Player2Poison.text = "\(poison2)"
    }
    
    func setLife1(){
        
        // Sets the title of the alert
        let alertController = UIAlertController(title: "New Life Total?", message: "Enter New Life Total", preferredStyle: .alert)
        
        // The Confirm Action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            // Getting the input values from user
            let newLife1 = alertController.textFields?[0].text
            self.Player1Life.text = "\(newLife1!)"
            self.lifetotal1 = Int(newLife1!)!
            

            
        }
        
        // The cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        // Adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter New Life Total"
            textField.keyboardType = .numberPad
        }
        
        // Adding Actions to dialog box
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        // Presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    func setLife2(){
        
        // Sets the title of the alert
        let alertController = UIAlertController(title: "New Life Total?", message: "Enter New Life Total", preferredStyle: .alert)
        
        // The Confirm Action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            // Getting the input values from user
            let newLife2 = alertController.textFields?[0].text
            self.Player2Life.text = "\(newLife2!)"
            self.lifetotal2 = Int(newLife2!)!
            
            
            
        }
        
        // The cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        // Adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter New Life Total"
            textField.keyboardType = .numberPad
        }
        
        // Adding Actions to dialog box
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        // Presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
        
        
    }
}

