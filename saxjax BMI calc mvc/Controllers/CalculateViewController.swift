//
//  CalculateViewController.swift
//  saxjax BMI calc mvc
//
//  Created by Jakob Skov Søndergård on 15/07/2022.
//

import UIKit

class CalculatorViewController:UIViewController{
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    @IBAction func heightSliderDidChange(_ sender: UISlider) {
        setLabelValues(label: heightValueLabel, value: sender.value, unitName: "cm")
    }

    @IBAction func weightSliderDidChange(_ sender: UISlider) {
        setLabelValues(label: weightValueLabel, value: sender.value, unitName: "kg")
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value/100
        let weight = weightSlider.value

        calculatorBrain.calculateBMI(heightInMeters: height, weightInKg: weight)
        performSegue(withIdentifier: "goToResult", sender: self)

    }

    func setLabelValues(label:UILabel,value:Float, unitName:String){
        let labelText = String(format: "%.2f", value)
        label.text = "\(labelText)" + unitName
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelValues(label: weightValueLabel, value: weightSlider.value, unitName: "kg")
        setLabelValues(label: heightValueLabel, value: heightSlider.value, unitName: "cm")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let  destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }

}
