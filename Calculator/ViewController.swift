//
//  ViewController.swift
//  Calculator
//
//  Created by Samet Alkan on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let buttonText = (sender.titleLabel?.text)!
        
        switch buttonText {
        case "AC":
            deleteLabel()
        case "+/-":
            print(5)
        case "%":
            print(5)
        case "/":
            updateLabel(withOperation: buttonText)
        case "x":
            updateLabel(withOperation: "*")
        case "-":
            updateLabel(withOperation: buttonText)
        case "+":
            updateLabel(withOperation: buttonText)
        case "7":
            updateLabel(withNumber: buttonText)
        case "8":
            updateLabel(withNumber: buttonText)
        case "9":
            updateLabel(withNumber: buttonText)
        case "4":
            updateLabel(withNumber: buttonText)
        case "5":
            updateLabel(withNumber: buttonText)
        case "6":
            updateLabel(withNumber: buttonText)
        case "1":
            updateLabel(withNumber: buttonText)
        case "2":
            updateLabel(withNumber: buttonText)
        case "3":
            updateLabel(withNumber: buttonText)
        case "0":
            updateLabel(withNumber: buttonText)
        case ".":
            addPoint()
        case "=":
            calculate()
        default:
            print("beklenmedik hata")
        }
        
    }
    
    func updateLabel(withNumber string: String){
        label.text = label.text == "0" ? string : label.text! + string
    }
    
    func updateLabel(withOperation string: String){
        label.text = label.text! + string
        
    }
    
    func deleteLabel(){
        label.text = "0"
    }
    
    func addPoint() {
        label.text = label.text == "0" ? "0." : label.text! + "."
    }
    
    func calculate() {
        let result = NSExpression(format:label.text!)
        if let value = result.expressionValue(with: nil, context: nil) {
            label.text = "\(value)"
        }
    }
    
}

