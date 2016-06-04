//
//  tableViewVC.swift
//  tableView
//
//  Created by gEeYaR's MacBook Pro on 28/05/16.
//  Copyright © 2016 gEeYaR's MacBook Pro. All rights reserved.
//

import UIKit



//set the table delegate and datasource to the required classes
//numberOfSectionsInTableView,tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) are compulsory methods



class tableViewVC: UIViewController, UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var table: UITableView!
   
    @IBOutlet weak var lab1: UILabel!
    var arr=["One","two","three","four","five"]
    
    
    override func viewDidLoad() {
        print("load")
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
          print("hello")
        let cellCode = UITableViewCell();      // for simple tables we can use this method by neglecting the next line.
        
        // for tables whihch has huge data, we must use reusabele cells for perfomace issues, the below method is the recommended method
        
        
        //let cellCode = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        
        
        // here the method is used to use the prototype cell and iterate it with the data we need
        
        // first , create a prototype cell by incrementing the prtotypr cell to 1 in attrib inspec, and name it as "cell"( rem the name as we'd use it here)
        
        // then make the cellCode as a reusable cell by typing  tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)-------> in this the change the identifier as the protype Cell name which is created above ("cell")
        
        // this ll still have an error as the parent method returns UITableViewCell.. so put "as UITableViewCell" at the end of the dec statement
        //tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        
        print("hi")
        
        let data=arr[indexPath.row]
        
        cellCode.textLabel?.text=data
        
                
        return cellCode

        
    }
    
}










