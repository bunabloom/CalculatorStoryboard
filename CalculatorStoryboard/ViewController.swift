//
//  ViewController.swift
//  CalculatorStoryboard
//
//  Created by rin kim on 6/23/24.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonColor()
    }


    @IBOutlet var numButton: [UIButton]!
    
    func buttonColor() {
        for i in numButton {
            i.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        }
    }
    
}

