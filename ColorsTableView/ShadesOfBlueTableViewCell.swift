//
//  ShadesOfBlueTableViewCell.swift
//  ColorsTableView
//
//  Created by Sanjay Rai on 22/03/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class ShadesOfBlueTableViewCell: UITableViewCell {
 
    @IBOutlet weak var blueImageView: UIImageView!
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
