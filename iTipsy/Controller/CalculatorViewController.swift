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
    
    var tipButtons: [UIButton]?
    var tipValue: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipButtons = [zeroPctButton, tenPctButton, twentyPctButton]
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        for button in tipButtons ?? []{
            if sender == button{
                button.isSelected = true
                switch button.currentTitle {
                case "0%":
                    tipValue = 0.0
                case "10%":
                    tipValue = 0.1
                case "20%":
                    tipValue = 0.2
                default:
                    tipValue = 0.0
                }
            } else {
                button.isSelected = false
            }
        }
        print(tipValue ?? "Nil")
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        stepperNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(stepperNumberLabel.text ?? "Nil")
    }
}
