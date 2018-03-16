//
//  SearchTableViewController.swift
//  Midterm App
//
//  Created by Irving Delgado on 3/16/18.
//  Copyright © 2018 Irving Delgado. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    
    var cards = [Cards]()
    var passcardname: String!
    

//    @IBOutlet weak var PassImage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [
            Cards(type: "Creature", name:"The Scarab God"),
            Cards(type: "Creature", name:"Snapcaster Mage"),
            Cards(type: "Instant", name:"Lightning Bolt"),
//            Cards(type:"Instant", name:"Force of Will"),
            Cards(type:"Sorcery", name:"Ponder"),
//            Cards(type:"Sorcery", name:"Preordain"),
            Cards(type:"Artifact", name:"Mox Opal"),
//            Cards(type:"Artifact", name:"Ornithopter"),
//            Cards(type:"Enchantment", name:"Blood Moon"),
//            Cards(type:"Enchantment", name:"Cast Out"),
//            Cards(type:"Land", name:"Sulfur Falls"),
//            Cards(type:"Land", name:"Blood Crypt"),
//            Cards(type:"Planeswalker", name:"Jace, the Mind Sculptor"),
//            Cards(type:"Planeswalker", name:"Karn, Liberated"),
//            Cards(type:"Planewsalker", name:"Gideon, Ally of Zendikar")
        ]
//        print(cards[0])

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cards.count
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let card = cards[indexPath.row]
        cell.textLabel!.text = card.name
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            passcardname = "\((cell.textLabel!.text)! + ".png")"
//            print(passcardname)
//            print(cell.textLabel!.text.self!)
//            performSegue(withIdentifier: "showCardImage", sender: self)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showImage") {
            let controller = segue.destination as! DetailViewController
//            print(passcardname)
            controller.imagename = passcardname
        }
    }

}
