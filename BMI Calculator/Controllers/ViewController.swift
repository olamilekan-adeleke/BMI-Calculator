//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 17/12/2022.
//  Copyright © 2019 Kod-x. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmiCalculator: BmiCalculator = .init()
    
    @IBOutlet var heightSliderOutlet: UISlider!
    @IBOutlet var weightSliderOutlet: UISlider!
    @IBOutlet var heightText: UILabel!
    @IBOutlet var weightText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSliderOutlet.value = 0
        weightSliderOutlet.value = 0
        
        heightText.text = "0 m"
        weightText.text = "0 Kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = String(format: "%.2f m", sender.value)
        heightText.text = currentValue
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = String(format: "%.1f Kg", sender.value)
        weightText.text = currentValue
    }
    
    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        let height: Float = heightSliderOutlet.value
        let weight: Float = weightSliderOutlet.value
        
        bmiCalculator.calculateBmi(height: height, weight: weight)
        performSegue(withIdentifier: "/bmiResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "/bmiResult" {
            print("Navigating To Bmi Result Screen")
            
            let destination = segue.destination as! ResultViewController
            
            destination.value = bmiCalculator.getBmiValue()
            destination.advice = bmiCalculator.getBmiAdvice()
            destination.backgroundColor = bmiCalculator.getBmiColor()
        }
    }
}
