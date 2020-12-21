//
//  ViewController.swift
//  Prework
//
//  Created by Amari Lewis on 18/12/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    // @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    //   @IBOutlet weak var TipControl: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
   // @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
    }
    
 
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill  * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
     
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.f", tip)
        
        totalLabel.text = String(format: "$%.f", total)
    
    }
    
    }


