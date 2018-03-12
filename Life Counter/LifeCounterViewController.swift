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
    // FIXME: - Set Player 1 Life
//    @IBAction func setPlayer1Life(_ sender: UIButton) {
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
    
    // MARK: - Methods
    func restartGame() {
        lifetotal1 = 20
        lifetotal2 = 20
        updateLabels()
    }
    
    func updateLabels() {
        Player1Life.text = "\(lifetotal1)"
        Player2Life.text = "\(lifetotal2)"
    }
    
}

