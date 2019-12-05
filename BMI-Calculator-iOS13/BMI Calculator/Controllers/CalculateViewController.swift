//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Mehfuzur Rehman on 26/11/2019.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        calculatorBrain.updateHeight(height: sender.value)
        heightLabel.text = calculatorBrain.getHeightStr()
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        calculatorBrain.updateWeight(weight: sender.value)
        weightLabel.text = calculatorBrain.getWeightStr()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //launch the new view
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult")
        {
            //forced downcast "as!"
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmi = calculatorBrain.getBmiStr()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

