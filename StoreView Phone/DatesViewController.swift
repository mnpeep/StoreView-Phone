//
//  DatesViewController.swift
//  StoreView Phone
//
//  Created by Max Napadiy on 8/30/15.
//  Copyright (c) 2015 Maxed Out Programming, Inc. All rights reserved.
//

import UIKit

class DatesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Main Functions Start
    override func viewDidLoad() {
        super.viewDidLoad()
        var nib = UINib(nibName: "datesTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "expcell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBOutlet var tableView: UITableView!
    //Main Functions End
    //Table Functions Start
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        
        var cell: datesTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("expcell") as! datesTableViewCell
        cell.productQuantity.text = "100"
        cell.productName.text = "Test Product"
        cell.productExpirationDate.text = "01/01/2011"
        return cell
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Row \(indexPath.row) selected")
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    //Table Functions End
}