//
//  ViewController.swift
//  CalculatorStoryboard
//
//  Created by rin kim on 6/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet var numButton: [UIButton]!
    
    var tempStr = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designButton()
    }

    
    @IBAction func numPressed(_ sender: UIButton) {
        let num = sender.currentTitle!
        tempStr.append(num)
        if tempStr[tempStr.startIndex] == "0" && tempStr.count > 2 {
            tempStr.removeFirst()
        }
        sendToLabel()
    }

    @IBAction func opBtnPressed(_ sender: UIButton) {
        let operation = sender.currentTitle!
            if let lastChar = tempStr.last, !lastChar.isNumber {
                tempStr = String(tempStr.dropLast())
            }
            tempStr.append(operation)
            sendToLabel()
    }
    
    @IBAction func resetBtnPressed(_ sender: UIButton) {
        tempStr = "0"
        sendToLabel()
    }
    
    @IBAction func equalBtnPressed(_ sender: UIButton) {
        
        tempStr = String(calculate(expression: tempStr)!)
        sendToLabel()
    }
    
    func sendToLabel(){ //레이블에 지속전달 디스플레이를 위한
        numberLabel.text = tempStr
    }
    
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
    
    func designButton() {
        for i in numButton {
            i.layer.cornerRadius = 40
            i.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            
        }
    }

}


