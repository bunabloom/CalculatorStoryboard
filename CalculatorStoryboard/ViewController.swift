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
        temp.append(num)
        
        sendToLabel()
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
    
    //저장해둔 연산자와 저장해둔 숫자두개를 = 눌렸을떄 실행하게끔
    func calculate(a: Int, b: Int, operation: String) -> String {
        switch operation {
        case "+": return String(a + b)
        case "-": return String(a - b)
        case "x": return String(a - b)
        case "/": return String(a - b)
        default: return "0"
        }
        
    }




    func sendToLabel(){ //레이블에 지속전달 디스플레이를 위한
        numberLabel.text = temp
        }
    
    
    
    //operator 눌렸을때 -> num1 전달 연산자 전달 연산자 누른순간 계산
    func invalid(num: String, operator: String) -> Int{
        
        let temp2 = Int(num)!
        
        return temp2
        
    }
    

    
    
}

