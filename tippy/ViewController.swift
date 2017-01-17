//
//  ViewController.swift
//  tippy
//
//  Created by Elisa Heiken on 1/13/17.
//  Copyright © 2017 Elisa Heiken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var threetotalLabel: UILabel!
    @IBOutlet weak var fourtotalLabel: UILabel!
    @IBOutlet weak var twototalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!)  ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        twototalLabel.text = String(format: "$%.2f", total/2)
        threetotalLabel.text = String(format: "$%.2f", total/3)
        fourtotalLabel.text = String(format: "$%.2f", total/4)
        
        
        
        tipLabel.text = String(format:  "$%.2f", tip)
        totalLabel.text = String(format:  "$%.2f", total)
    }
}

