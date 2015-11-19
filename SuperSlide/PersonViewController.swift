//
//  PersonViewController.swift
//  SuperSlide
//
//  Created by andrew zuercher on 11/18/15.
//  Copyright © 2015 andrew zuercher. All rights reserved.
//

import Foundation
import UIKit

class PersonViewController: UITableViewController {
    var people = [
        [
            "name": "Andrew",
            "title": "President"
        ],
        [
            "name": "Cristina",
            "title": "CFO"
        ]
    ]
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("PersonCell")!
        let person:Dictionary = self.people[indexPath.row]
        cell.textLabel!.text = person["name"]
        cell.detailTextLabel?.text = person["title"]
        return cell
    }
}