//
//  datesTableViewCell.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/30/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class datesTableViewCell: UITableViewCell {

    @IBOutlet var productExpirationDate: UILabel!
    @IBOutlet var productQuantity: UILabel!
    @IBOutlet var productName: UILabel!
    @IBOutlet var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
