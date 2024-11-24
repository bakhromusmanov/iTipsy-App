//
//  TipsyBrain.swift
//  iTipsy
//
//  Created by Bakhrom Usmanov on 17/07/24.
//

import UIKit

class TipBrain{
   var tipPct: Float = 0
   var numberOfPeople: Float = 2
   var result: Float = 0
   var billValue: Float = 0
   
   func tipPctSelected (_ zeroPctButton: UIButton,  _ tenPctButton: UIButton, _ twentyPctButton: UIButton, sender: UIButton){
      
      let tipButtons: [UIButton] = [zeroPctButton, tenPctButton, twentyPctButton]
      
      for button in tipButtons{
         if sender == button{
            button.isSelected = true
            switch button.currentTitle {
            case "0%":
               tipPct = 0.0
            case "10%":
               tipPct = 0.1
            case "20%":
               tipPct = 0.2
            default:
               tipPct = 0.0
            }
         } else {
            button.isSelected = false
         }
      }
   }
   
   func calculateBillValue(_ billTextField: UITextField){
      if let text = billTextField.text {
         let formatter = NumberFormatter()
         formatter.locale = Locale.current // Use the current locale of the user
         formatter.numberStyle = .decimal
         
         if let number = formatter.number(from: text) {
            billValue = number.floatValue
         } else {
            print("Bill value text was inappropriate")
         }
      }
   }
   
   func getNumberOfPeople(_ stepperNumberLabel: UILabel){
      if let text = stepperNumberLabel.text, let number = Float(text){
         numberOfPeople = number
      }
   }
   
   func calculateResult(){
      result = (billValue + (billValue * tipPct)) / numberOfPeople
   }
   
}
