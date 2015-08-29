//
//  SettingsViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/28/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource {
    
    //Main ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        //println("Loaded")
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //End Main ViewController
    
        //Start Table View Data
            //Table definitions
            let settingsTable = [
                ("Server Settings"),
                ("Test")
            ]
            //End Table definitions
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
            //Number of Sections
        }
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return settingsTable.count
            //Number of Rows in each section
        }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = UITableViewCell()
            let (name) = settingsTable[indexPath.row]
            cell.textLabel?.text = name
            return cell
            //Cells in each section
        }
        //End Table View Data
}
