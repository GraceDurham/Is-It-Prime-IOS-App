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
        
        if let userEnteredString = numTextField.text{
        
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger{
                
                var isPrime = true
                
                if number == 1{
                
                    isPrime = false
                
                }
                var i = 2
                
                while i < number{
                    if (number % i) == 0{
                        
                        isPrime = false
                    
                    
                    }
                    
                    i = i + 1
                }
                
                if isPrime{
                    
                    numLabel.text = "\(number) is Prime!"
                    
                }else{
                    
                    numLabel.text = "\(number) is not Prime"
                }
        
            }else{
                    numLabel.text = "Please enter a positive whole number"
            
            
            }
            
        }
        
    
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

