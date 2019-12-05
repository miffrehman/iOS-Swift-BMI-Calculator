//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mehfuzur Rehman on 26/11/2019.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi = "0.0"
    var advice = ""
    var color = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //self.performSegue(withIdentifier: "goToCalculator", sender: self)
        self.dismiss(animated: true, completion: nil)
    }

}
