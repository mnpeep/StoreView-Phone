//
//  SettingsViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/29/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource {
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
    //Start of Table View Functions
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    //End of Table View Functions
}