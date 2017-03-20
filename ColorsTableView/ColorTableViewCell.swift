//
//  ColorTableViewCell.swift
//  ColorsTableView
//
//  Created by Sanjay Rai on 19/03/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var colorImageView: UIImageView!
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
