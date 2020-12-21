//
//  ViewController.swift
//  Prework
//
//  Created by Amari Lewis on 18/12/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var TipControl: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
    }
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
 
func calculateTip(_ sender: Any) {
    


    let bill = Double(billAmountTextField.text!)?? 0
let tipPercentages = [0.15, 0.18, 0.2]

    let tip = bill*tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]

let total = bill + tip

tipPercentageLabel.text  = String(format: "$%.2f", tip)

totalLabel.text = String(format: "$%.2f", total)


}
}
}
