//
//  TipsyBrain.swift
//  iTipsy
//
//  Created by Bakhrom Usmanov on 17/07/24.
//

import UIKit

struct TipBrain{
    var tipValue: Float
    
    mutating func tipPctSelected (tipButtons: [UIButton], sender: UIButton){
        for button in tipButtons{
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
    
}
