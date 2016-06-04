//
//  ViewController.swift
//  tableView
//
//  Created by gEeYaR's MacBook Pro on 07/05/16.
//  Copyright © 2016 gEeYaR's MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate
{
    @IBOutlet weak var tableview: UITableView!

    
    var arr=["1","2","3"]
    var pickerview=UIPickerView()
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("jjjj")
        
        pickerview.dataSource=self
        pickerview.delegate=self
        textField.inputView=pickerview
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text=arr[row]
    }
}

