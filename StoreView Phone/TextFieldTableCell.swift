//
//  TextFieldTableCell.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 9/1/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

public class TextFieldTableCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
    public func editPlaceholder (placeholder placeholder: String?){
        textField.placeholder = placeholder
        textField.accessibilityLabel = placeholder
    }
}
