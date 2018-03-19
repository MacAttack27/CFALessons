//
//  TableViewController.swift
//  lessontest
//
//  Created by Mackenzie Sumner on 3/19/18.
//  Copyright © 2018 Mackenzie Sumner. All rights reserved.
//

import UIKit

var lessons = ["Credit", "Debt", "Budgeting", "Saving"]
var lessonDesc = ["Credit is borrowed money that you can use to purchase goods and services when you need them. You get credit from a credit grantor, whom you agree to pay back the amount you spent, plus applicable finance charges, at an agreed-upon time.",
                  "Debt is an amount of money borrowed by one party from another. Debt is used by many corporations and individuals as a method of making large purchases that they could not afford under normal circumstances. A debt arrangement gives the borrowing party permission to borrow money under the condition that it is to be paid back at a later date, usually with interest",
                  "Budgeting is the process of creating a plan to spend your money. This spending plan is called a budget. Creating this spending plan allows you to determine in advance whether you will have enough money to do the things you need to do or would like to do.",
                  "Savings refer to money you put aside for future use rather than spending it immediately. In addition to the benefits of saving up for future purchases, delaying an impulse purchase also helps you decide whether it is something you really need, or a waste of money you will regret shortly after buying."]
var myIndex = 0

class TableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lessons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = lessons[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}

