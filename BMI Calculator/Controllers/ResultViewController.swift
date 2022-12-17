//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Enigma Kod on 17/12/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var value: String?
    var advice: String?
    var backgroundColor: UIColor?

    @IBOutlet var resultText: UILabel!
    @IBOutlet var adviceText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultText.text = value
        adviceText.text = advice
        view.backgroundColor = backgroundColor
    }

    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
