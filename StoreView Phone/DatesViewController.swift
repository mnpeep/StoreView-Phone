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
        let nib = UINib(nibName: "datesTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "expcell")
        self.refreshControl = UIRefreshControl()
        self.refreshControl.addTarget(self, action: "refresh:", forControlEvents: UIControlEvents.ValueChanged)
        self.tableView.addSubview(refreshControl)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //Main Functions End
    //Table Functions Start
    @IBOutlet var tableView: UITableView!
    var refreshControl:UIRefreshControl!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        
        let cell: datesTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("expcell") as! datesTableViewCell
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.productQuantity.text = "100"
        cell.productName.text = "Test Product"
        cell.productExpirationDate.text = "01/01/2011"
        return cell
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    func refresh(sender:AnyObject){
        self.refreshControl.endRefreshing()
    }
    //Table Functions End
}