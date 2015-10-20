//
//  TableView.swift
//  NEO
//
//  Created by 晏亚博 on 15/10/20.
//  Copyright © 2015年 晏亚博. All rights reserved.
//

import UIKit

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource {

    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        self.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: TableViewCell = self.dequeueReusableCellWithIdentifier("cell") as! TableViewCell
        cell.config()
        
        return cell
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
