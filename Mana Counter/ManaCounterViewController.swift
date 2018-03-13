//
//  ManaCounterViewController.swift
//  Midterm App
//
//  Created by Irving Delgado on 3/13/18.
//  Copyright © 2018 Irving Delgado. All rights reserved.
//

import UIKit

class ManaCounterViewController: UIViewController {
    var w = 0
    var u = 0
    var b = 0
    var r = 0
    var g = 0
    var c = 0
    var s = 0
    
    
    // MARK: - @IBOutlets
    @IBOutlet weak var W: UILabel!
    @IBOutlet weak var U: UILabel!
    @IBOutlet weak var B: UILabel!
    @IBOutlet weak var R: UILabel!
    @IBOutlet weak var G: UILabel!
    @IBOutlet weak var C: UILabel!
    @IBOutlet weak var S: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetValues()
    }
    
    // MARK: - @IBActions
    
    @IBAction func incrementW() {
        w += 1
        W.text = "\(w)"
    }
    @IBAction func decreaseW() {
        w += -1
        if w < 0 {
            w += 1
            W.text = "\(w)"
        }
        W.text = "\(w)"
    }
    
    @IBAction func incrementU() {
        u += 1
        U.text = "\(u)"
    }
    @IBAction func decreaseU() {
        u += -1
        if u < 0 {
            u += 1
            U.text = "\(u)"
        }
        U.text = "\(u)"
    }
    
    @IBAction func incrementB() {
        b += 1
        B.text = "\(b)"
    }
    @IBAction func decreaseB() {
        b += -1
        if b < 0 {
            b += 1
            B.text = "\(b)"
        }
        B.text = "\(b)"
    }
    
    @IBAction func incrementR() {
        r += 1
        R.text = "\(r)"
    }
    @IBAction func decreaseR() {
        r += -1
        if r < 0 {
            r += 1
            R.text = "\(r)"
        }
        R.text = "\(r)"
    }
    
    @IBAction func incrementG() {
        g += 1
        G.text = "\(g)"
    }
    @IBAction func decreaseG() {
        g += -1
        if g < 0 {
            g += 1
            G.text = "\(g)"
        }
        G.text = "\(g)"
    }
    
    @IBAction func incrementC() {
        c += 1
        C.text = "\(c)"
    }
    @IBAction func decreaseC() {
        c += -1
        if c < 0 {
            c += 1
            C.text = "\(c)"
        }
        C.text = "\(c)"
    }
    
    @IBAction func incrementS() {
        s += 1
        S.text = "\(s)"
    }
    @IBAction func decreaseS() {
        s += -1
        if s < 0 {
            s += 1
            S.text = "\(s)"
        }
        S.text = "\(s)"
    }
    
    @IBAction func reset() {
        resetValues()
    }
    
    // MARK: - Methods
    func resetValues() {
        w = 0
        u = 0
        b = 0
        r = 0
        g = 0
        c = 0
        s = 0
        updateLabels()
    }
    
    func updateLabels() {
        W.text = "\(w)"
        U.text = "\(u)"
        B.text = "\(b)"
        R.text = "\(r)"
        G.text = "\(g)"
        C.text = "\(c)"
        S.text = "\(s)"
    }
    
}
