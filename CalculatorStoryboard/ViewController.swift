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
    
    var resultnum = 0
    var num1: Int = 0
    var num2: Int = 0
    var temp: String = "0"
    
    func buttonColor() {
        for i in numButton {
            i.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonColor()
        
    }
    
    
    
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let num = sender.currentTitle!
        // 조건 등록 연산이 중복되지 않도록 // 십이상숫자가될경우 앞에 0을 지우는것
        switch Int(num)! {
        case 1...9: temp.append(num)
        default :
        temp.append(<#T##other: String##String#>)
        }
        
        
        temp.append(num)
        sendToLabel()
    }
    
    func invalid(op: String) -> String {
        let temp2: Character = Character(temp.index(temp.endIndex, offsetBy: -1))
        if temp2 == "+" || temp2 == "-" || temp2 == "/" || temp2 == "*" {
            
        }
        
    }
    
    @IBAction func opButPressed(_ sender: UIButton) {
        let operation = sender.currentTitle!
        temp.append(operation)
        sendToLabel()
        
    }
    
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        
        temp = "0"
        sendToLabel()
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        temp = String(calculate(expression: temp)!)
        
        sendToLabel()
    }
    
    
    
    
    
    
    func sendToLabel(){ //레이블에 지속전달 디스플레이를 위한
        numberLabel.text = temp
            
            
        
        
        
    }
    //operator 눌렸을때 -> num1 전달 연산자 전달 연산자 누른순간 계산
    func invalid(num: String, operator: String) -> Int{
        
        let temp2 = Int(num)!
        
        return temp2
        
    }
    
    
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
    
}

