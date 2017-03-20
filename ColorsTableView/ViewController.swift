//
//  ViewController.swift
//  ColorsTableView
//
//  Created by Sanjay Rai on 19/03/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colors = ["Blue", "Yellow"]
    let otherColors = ["Red", "Green"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Blue and Yellow"
        }
        else {
            return "Red and Green"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return colors.count
        } else {
            return otherColors.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ColorTableViewCell
       
        if indexPath.section == 0 {
            cell.colorImageView.image = UIImage(named:colors[indexPath.row] + ".jpg")
            cell.label.text = colors[indexPath.row]
            return cell
            
        } else {
            
            cell.colorImageView.image = UIImage(named:otherColors[indexPath.row] + ".jpg")
            cell.label.text = otherColors[indexPath.row]
            return cell
            
        }

    }
    

    
    
    
}

