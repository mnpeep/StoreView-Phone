//
//  DatesViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/28/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class DatesViewController: UIViewController, UITableViewDataSource {
    //Main Functions
    @IBOutlet weak var expTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var nib = UINib(nibName: "ExpirationDateCell", bundle: nil)
        expTableView.registerNib(nib, forCellReuseIdentifier: "expcell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //End Main Functions
    //Start Table View Functions
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.expTableView.dequeueReusableCellWithIdentifier("expcell") as! ExpirationDateCell
        cell.productName?.text = "Soup"
        cell.productQuantity?.text = "1"
        cell.productExpirationDate?.text = "03/03/2013"
        return cell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        println("\(indexPath.row)  Selected")
    }
    //End Table View Functions
}