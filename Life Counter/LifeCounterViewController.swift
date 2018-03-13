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
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        lifetotal1 = 20
        lifetotal2 = 20
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
//    @IBAction func setPlayer1Life(_ sender: UIButton) {
//
//
//    }
    
    
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
    
}

