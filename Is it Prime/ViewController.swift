//
//  ViewController.swift
//  Is it Prime
//
//  Created by Grace Durham on 6/5/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numLabel: UILabel!

    @IBOutlet var numTextField: UITextField!
    
    
    @IBAction func isPrimeButton(_ sender: Any) {
        
        let number = Int(numTextField.text!)
        
        func isItPrime(number:Int) -> Bool{
            var i = 2
            
            while i < number{
                if (number % i) == 0{
                    
                    numLabel.text = "\(number) is not Prime"
                    return false
                }
                i = i + 1
            }
            numLabel.text =   "\(number) is Prime"
            return true
        }
        print(isItPrime(number: number!))

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

