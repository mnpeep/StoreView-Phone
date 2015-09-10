//
//  SettingsViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/29/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //Main ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initial Load
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //End of ViewController Functions
    
    //Table defs
    let settingsTitle = [
        ("Main Settings"),
        ("View Settings")
    ]
    let mainSettingsTable = [
        ("Server Settings"),
        ("Sync Settings")
    ]
    let viewSettingsTable = [
        ("Expiration Date Lengths")
    ]
    //End table defs
    
    //Start of Table View Functions
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellTitle = ""
        if(indexPath.section == 0 && indexPath.row <= (mainSettingsTable.count - 1)){
            cellTitle = mainSettingsTable[indexPath.row]
        }else if (indexPath.section == 1 && indexPath.row <= (viewSettingsTable.count - 1)){
            cellTitle = viewSettingsTable[indexPath.row]
        }else{
            cellTitle = "Error"
        }
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        cell.textLabel?.text = cellTitle
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if((settingsTitle.count - 1) >= section){
            return settingsTitle[section]
        }else{
            return nil
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return settingsTitle.count
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return mainSettingsTable.count
        }else if(section == 1){
            return viewSettingsTable.count
        }else{
            return 0
        }
    }
    //End of Table View Functions
    //Start of Select Functions
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.section == 0 && indexPath.row == 0){ //Server Settings
            self.performSegueWithIdentifier("ServerSettingsViewControllerSegue", sender: self)
        }else{
            self.performSegueWithIdentifier("SyncSettingsViewControllerSegue", sender: self)
        }
    }
    //End of Select Functions
}