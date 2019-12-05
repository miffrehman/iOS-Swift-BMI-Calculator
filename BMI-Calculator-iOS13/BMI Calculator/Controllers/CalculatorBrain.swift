//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mehfuzur Rehman on 25/11/2019.
//

import UIKit

struct CalculatorBrain {
    
    var height: Float = 1.5
    var weight: Float = 100
    
    mutating func updateHeight(height: Float) {
        self.height = height
    }
    
    mutating func updateWeight(weight: Float) {
        self.weight = weight
    }
    
    func getHeightStr() -> String {
        let valueStr = String(format: "%.2f", height)
        return "\(valueStr)m"
    }
    
    func getWeightStr() -> String {
        //let valueStr = String(format: "%.0f", weight) //either/or
        let valueStr = String(Int(weight))
        return "\(valueStr)Kg"
    }
    
    func getBmiStr() -> String {
        return String(format: "%.2f", getBmiValue())
    }
    
    func getBmiValue() -> Float {
        return weight / pow(height, 2)
    }
    
    func getAdvice() -> String {
        let bmiValue = getBmiValue()
        if (bmiValue < 18.5)
        {
            return "Eat more pies"
        }
        else if (bmiValue <= 24.9)
        {
            return "Fit as a fiddle"
        }
        else
        {
            return "Eat fewer pies"
        }
    }
    
    func getColor() -> UIColor {
        let bmiValue = getBmiValue()
        if (bmiValue < 18.5)
        {
            return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        }
        else if (bmiValue <= 24.9)
        {
            return #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        }
        else
        {
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }
}
