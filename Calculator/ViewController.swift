//
//  ViewController.swift
//  Calculator
//
//  Created by Samet Alkan on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {

    var result=0
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Operations
    @IBAction func buttonAdd(_ sender: Any) {
        label.text = label.text! + "+"
    }
    
    @IBAction func buttonSub(_ sender: Any) {
        label.text = label.text! + "-"
    }
    
    @IBAction func buttonMultiplication(_ sender: Any) {
        label.text = label.text! + "*"
    }
    
    @IBAction func buttonDivision(_ sender: Any) {
        label.text = label.text! + "/"
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        label.text = "0"
    }
    @IBAction func buttonEqual(_ sender: Any) {
        let expressionToEvaluate = NSExpression(format: label.text!)
            if let result = expressionToEvaluate.expressionValue(with: nil, context: nil) as? NSNumber {
                label.text = "\(result)"
            } else {
                label.text = "Error"
            }
    }
    
    @IBAction func buttonPoint(_ sender: Any) {
        label.text = label.text! + "."
    }
    
    @IBAction func buttonPercent(_ sender: Any) {
        //label.text = label.text! + "%"
    }
    
    //Numbers
    @IBAction func button0(_ sender: Any) {
        if label.text == "0"{
           
        }else{
            label.text = label.text! + "0"
        }
    }
    
    @IBAction func button1(_ sender: Any) {
        if label.text == "0"{
            label.text = "1"
        }else{
            label.text = label.text! + "1"
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if label.text == "0"{
            label.text = "2"
        }else{
            label.text = label.text! + "2"
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if label.text == "0"{
            label.text = "3"
        }else{
            label.text = label.text! + "3"
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if label.text == "0"{
            label.text = "4"
        }else{
            label.text = label.text! + "4"
        }
    }
    
    @IBAction func button5(_ sender: Any) {
        if label.text == "0"{
            label.text = "5"
        }else{
            label.text = label.text! + "5"
        }
    }
    
    @IBAction func button6(_ sender: Any) {
        if label.text == "0"{
            label.text = "6"
        }else{
            label.text = label.text! + "6"
        }
    }
    
    @IBAction func button7(_ sender: Any) {
        if label.text == "0"{
            label.text = "7"
        }else{
            label.text = label.text! + "7"
        }
    }
    
    @IBAction func button8(_ sender: Any) {
        if label.text == "0"{
            label.text = "8"
        }else{
            label.text = label.text! + "8"
        }
    }
    
    @IBAction func button9(_ sender: Any) {
        if label.text == "0"{
            label.text = "9"
        }else{
            label.text = label.text! + "9"
        }
    }
}

