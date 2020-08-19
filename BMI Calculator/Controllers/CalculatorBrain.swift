//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Haris Spahic on 19/08/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = weight / (height * height)
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
        // bmi = BMI(value: bmiValue, advice: String, color: UIColor)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    
}

    func getAdvice() -> String {
        return bmi?.advice ?? "You should choose weight height"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
