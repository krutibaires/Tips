//
//  ViewController.swift
//  Tips
//
//  Created by kruti jariwala on 4/12/15.
//  Copyright (c) 2015 kruti jariwala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tiplabel.text = "0.00"
        totalLable.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        @IBAction func onEditingChanged(sender: AnyObject) {
            var tipPercentages = [0.18,0.2,0.22]
            var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            
            var billAmount = NSString(string: billField.text).doubleValue
            var tip = billAmount * tipPercentage
            var total = billAmount + tip
            
          tiplabel.text = String(format: "$%.2f", tip)
            totalLable.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)

    }
}

