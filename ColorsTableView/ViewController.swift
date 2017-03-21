//
//  ViewController.swift
//  ColorsTableView
//
//  Created by Sanjay Rai on 19/03/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colors = ["Blue", "Yellow", "Red", "Green"]
    var a = "A"
    var b = "B"

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return colors.count
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ColorTableViewCell
       
            cell.colorImageView.image = UIImage(named:colors[indexPath.row] + ".jpg")
            cell.label.text = colors[indexPath.row]
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            let viewController = storyboard?.instantiateViewController(withIdentifier: a)
            self.navigationController?.pushViewController(viewController!, animated: true)
            print(indexPath.row)
            print("Mission early complete")
        } else {
            let viewController = storyboard?.instantiateViewController(withIdentifier: b)
            self.navigationController?.pushViewController(viewController!, animated: true)
            print(indexPath.row)
            print("Mission Accomplished, good work")
        }


        
    }
}

