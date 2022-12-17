//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var heightSliderOutlet: UISlider!
    @IBOutlet var weightSliderOutlet: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        heightSliderOutlet.value = 0
        weightSliderOutlet.value = 0
    }

    @IBAction func onSliderChanged(_ sender: UISlider) {}
}
