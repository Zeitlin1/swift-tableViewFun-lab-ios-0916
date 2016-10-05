//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    let arrayOfKitties = ["Abyssinian", "Bengal", "Birman", "British Shorthair", "Burmese", "Exotic Shorthair"]
    
    
    @IBOutlet var kittyTableView: UITableView!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("numofsections")
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                print("tableviewrows")
        return arrayOfKitties.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        
        var label = arrayOfKitties[indexPath.row]
        
        cell.textLabel?.text = arrayOfKitties[indexPath.row]
        cell.backgroundColor = UIColor.blue
        
        return cell
        
    }
}
