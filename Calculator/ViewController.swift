//
//  ViewController.swift
//  Calculator
//
//  Created by Manuel Guevara Reyes on 2/27/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOne: UITextField!
    
    
    @IBOutlet weak var numberTwo: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func plus(_ sender: Any) {
        let numOne: Double? = Double(numberOne.text!)
        let numTwo: Double? = Double(numberTwo.text!)
        let question = numOne! + numTwo!
        let output = String(format: "%.2f",question)
        answer.text = "Answer: " + output
    }
    
    @IBAction func minus(_ sender: Any) {
        let numOne: Double? = Double(numberOne.text!)
        let numTwo: Double? = Double(numberTwo.text!)
        let question = numOne! - numTwo!
        let output = String(format: "%.2f",question)
        answer.text = "Answer: " + output
    }
    
    @IBAction func multiply(_ sender: Any) {
        let numOne: Double? = Double(numberOne.text!)
        let numTwo: Double? = Double(numberTwo.text!)
        let question = numOne! * numTwo!
        let output = String(format: "%.2f",question)
        answer.text = "Answer: " + output
    }
    
    
    @IBAction func divide(_ sender: Any) {
        let numOne: Double? = Double(numberOne.text!)
        let numTwo: Double? = Double(numberTwo.text!)
        let question = numOne! / numTwo!
        let output = String(format: "%.2f",question)
        answer.text = "Answer: " + output
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }


}

