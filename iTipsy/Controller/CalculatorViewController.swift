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
        billTextField.endEditing(true)
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
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        stepperNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let userInputText = billTextField.text, let billValue = Float(userInputText) else {
            print("Invalid bill value")
            return
        }
        
        guard let numberOfPeopleText = stepperNumberLabel.text, let numberOfPeople = Float(numberOfPeopleText) else {
            print("Invalid number of people")
            return
        }
        
        guard let tipValue = tipValue else {
            print("No tip value selected")
            return
        }
        
        let result = (billValue + (billValue * tipValue)) / numberOfPeople
        print(result)
    }
    
    
}
