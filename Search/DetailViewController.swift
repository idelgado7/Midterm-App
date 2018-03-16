//
//  DetailViewController.swift
//  Midterm App
//
//  Created by Irving Delgado on 3/16/18.
//  Copyright © 2018 Irving Delgado. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var ViewImg: UIImageView!
    
    var imagename: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("\(imagename?)")
//        currentimage = imagename!
        
//        ViewImg.image = UIImage(named: "The Scarab God.png")
//        title = imagename
//        ViewImg.image = imagename
//        print("\(imagename)")
//        title = imagename
//        print("\(imagename)")
//        imagename = imagename + ".png"
        if imagename == nil {
            Void()
        } else {
            ViewImg.image = UIImage(named: "\(imagename!)");
            title = "\(imagename!)";
            print("\(imagename!)")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        ViewImg.image = UIImage(named: imagename!)
//        title = imagename
//    }
}

