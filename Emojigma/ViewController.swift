//
//  ViewController.swift
//  Emojigma
//
//  Created by Raiza Abubakar on 6/24/15.
//  Copyright (c) 2015 Ghost Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var emojigmaOutput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userInput.text = ""
        self.emojigmaOutput.text = ""

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var str = textField.text
        println("You typed: \(str)")
        return true
    }

    @IBAction func emojigmaEncode(sender: UIButton) {
        
        self.emojigmaOutput.text = self.emojigmaEncodeText(self.userInput.text)
        
        
    }
    
    func emojigmaEncodeText(var userString: String) -> String {
        var encodedString = ""
        
        for c in userString {
            println("\(c)")
            
            var x = c.hashValue
            
            x = x + 16
            
            var newX = String(x)
            
            println(x)
            encodedString = encodedString + newX
        }
        return encodedString
    }

}

