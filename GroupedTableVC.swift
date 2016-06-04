//
//  GroupedTableVC.swift
//  tableView
//
//  Created by gEeYaR's MacBook Pro on 30/05/16.
//  Copyright © 2016 gEeYaR's MacBook Pro. All rights reserved.
//

import UIKit

class GroupedTabelVC : UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    let arr1=["1","2","3","4","5"]
    
    let arr2=["one","two","three"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
     //   tableView.cellLayoutMarginsFollowReadableWidth = true;
        //this ll make the table cell heights auto adusted in diff devices. I've set the same bu checking on the followReadableWidth check box
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
            return arr1.count
            
        }
        else
        {
            return arr2.count
        }
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cellCode=tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.section==0
        {
            cellCode.textLabel?.text=arr1[indexPath.row]
            cellCode.detailTextLabel?.text="hi"         //detailTextLabel is subtitle of the cell
            cellCode.detailTextLabel?.textColor=UIColor.magentaColor()
            if(indexPath.row%2==0)
            {
                cellCode.backgroundColor=UIColor.grayColor()
                
                // this is to add an image to the table.
                //to input an image, go to assets.xcassets in the file explorer, in that add a new Image Set by clicking the + button and Name it which we ll use it the UIImage(named: "tableImage") attributet here, then drag an drop the image in the 1x place. we can also create a 2x and 3x images which ll be used to fit in diff images.
                
                let myImage=UIImage(named: "tableImage")
                cellCode.imageView?.image=myImage
              
            }
            else
            {
                
                let myImage=UIImage(named: "tableImage2")
                cellCode.imageView?.image=myImage
            }
            
            return cellCode
            
        }
        else{
            cellCode.textLabel?.text=arr2[indexPath.row]
            cellCode.detailTextLabel?.text="hello"
            if(indexPath.row%2==0)
            {
                cellCode.backgroundColor=UIColor.greenColor()
                
                let myImage=UIImage(named: "tableImage")
                cellCode.imageView?.image=myImage
            }

            else
            {
                
                let myImage=UIImage(named: "tableImage2")
                cellCode.imageView?.image=myImage
            }
            
          
           
         
            
            return cellCode
        }
        
        
        
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0
        {
            return"Numbers"
        }
        else
        {
            return"words"
        }
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
  // this can be used to write the status of the elements of the  page  and the redirection
     
        
        //The below code is used to make a blue tick at the cell right end
        
    /*let cellCodeSelect=tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cellCodeSelect.accessoryType=UITableViewCellAccessoryType.Checkmark*/
        
        
        
    }
    
    /*func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // this can be used to get the status of the leements of the next page to be fetched
    }*/
    
    
}
