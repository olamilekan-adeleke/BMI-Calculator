import UIKit

struct BmiCalculator {
    var _bmi: BMI?

    func getBmiValue() -> String {
        let value: String = String(format: "%.2f", _bmi?.value ?? 0.0)

        return value
    }

    func getBmiAdvice() -> String {
        return _bmi?.advice ?? "No Advice Found"
    }

    func getBmiColor() -> UIColor {
        return _bmi?.backgroundColor ?? UIColor.blue
    }

    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            _bmi = BMI(
                value: bmiValue,
                advice: "Eat more pies!",
                backgroundColor: UIColor.blue
            )
        } else if bmiValue < 24.9 {
            _bmi = BMI(
                value: bmiValue,
                advice: "Fit as a fiddle!",
                backgroundColor: UIColor.green
            )
        } else {
            _bmi = BMI(
                value: bmiValue,
                advice: "Eat less pies!",
                backgroundColor: UIColor.red
            )
        }
    }
}
