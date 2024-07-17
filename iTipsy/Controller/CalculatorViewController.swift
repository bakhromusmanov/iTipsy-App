//
//  CalculatorViewController.swift
//  iTipsy
//
//  Created by Bakhrom Usmanov on 16/07/24.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var stepperNumberLabel: UILabel!
    
    var tipBrain = TipBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        tipBrain.tipPctSelected(zeroPctButton, tenPctButton, twentyPctButton, sender: sender)
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        stepperNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        tipBrain.calculateBillValue(billTextField)
        tipBrain.getNumberOfPeople(stepperNumberLabel)
        tipBrain.calculateResult()
        print(tipBrain.result)
    }
    
    
}
