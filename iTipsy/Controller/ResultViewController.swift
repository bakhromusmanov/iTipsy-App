//
//  ResultViewController.swift
//  iTipsy
//
//  Created by Bakhrom Usmanov on 16/07/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%.2f", tipBrain.result)
        settingsLabel.text = "Split between \(Int(tipBrain.numberOfPeople)) people, with \(tipBrain.tipPct*100)% tip."
    }
    
    var tipBrain = TipBrain()
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
