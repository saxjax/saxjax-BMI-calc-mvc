//
//  ResultViewController.swift
//  saxjax BMI calc mvc
//
//  Created by Jakob Skov Søndergård on 15/07/2022.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var BMITextLabel: UILabel!
    @IBOutlet weak var adviceLabel: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        BMITextLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
