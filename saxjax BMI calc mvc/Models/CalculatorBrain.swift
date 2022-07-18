//
//  CalculatorBrain.swift
//  saxjax BMI calc mvc
//
//  Created by Jakob Skov Søndergård on 16/07/2022.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi:BMI?

    func getBMIValue()->String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }

    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }

    func getColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

    mutating func calculateBMI(heightInMeters: Float, weightInKg:Float){
        let bmiValue = weightInKg/(heightInMeters*heightInMeters)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue,
                      advice: "You should eat more",
                      color: #colorLiteral(red: 0.47, green: 0.83, blue: 0.98, alpha: 1) )

        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue,
                      advice: "Super BMI",
                      color: #colorLiteral(red: 0.72, green: 0.83, blue: 0.98, alpha: 1) )

        }
        else{
            bmi = BMI(value: bmiValue,
                      advice: "You should eat less",
                      color: #colorLiteral(red: 0.91, green: 0.83, blue: 0.98, alpha: 1) )

        }
    }
}
