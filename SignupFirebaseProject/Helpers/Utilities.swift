//
//  Utilities.swift
//  SignupFirebaseProject
//
//  Created by Ranula Ranatunga on 6/25/20.
//  Copyright © 2020 Ranula Ranatunga. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    
    static func  styleTextField(_ textfield:UITextField){
        
        
        // Create the bottom Line
        
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0 , y : textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255 , green: 173/255 , blue: 99/255 , alpha: 1).cgColor
        
        //Remove border on text field
        textfield .borderStyle = .none
        
        // add the line to the text field
        textfield.layer.addSublayer(bottomLine)
    }
    
    static func styleFilledButton(_ button:UIButton){
        
        // filled rounder corner design
        
        button.backgroundColor = UIColor.init(red: 48/255 , green: 173/255 , blue: 99/255 , alpha:1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHolllowButton(_ button:UIButton) {
        
        //hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password: String) -> Bool {
        
         let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$")
        return passwordTest.evaluate(with: password)
    }
}