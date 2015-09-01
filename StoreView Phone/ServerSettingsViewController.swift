//
//  ServerSettingsViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/31/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit
import CoreData

class ServerSettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //Main ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //End of ViewController Functions
    
    //Table defs
    let mainSettingsTable = [
        ("Server Settings"),
        ("Login Settings"),
        ("Sync Settings")
    ]
    let viewSettingsTable = [
        ("Expiration Date Lengths")
    ]
    //End table defs
    
    //Start of Table View Functions
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellText = ""
        if (indexPath.section == 0){
            if(indexPath.row == 0){
                cellText = "Server Address"
            }else if(indexPath.row == 1){
                cellText = "Server Port (Default: )"
            }else if(indexPath.row == 2){
                cellText = "Server Username"
            }else{
                cellText = "Server Password"
            }
            let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! TextFieldTableCell
            cell.editPlaceholder(placeholder: cellText)
            return cell
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("buttonCell") as! ButtonTableCell
            return cell
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 4
        }else{
            return 1
        }
    }
    //End of Table View Functions
}
