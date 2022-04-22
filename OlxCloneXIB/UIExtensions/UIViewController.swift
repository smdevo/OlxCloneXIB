//
//  UIViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 18/04/22.
//

import UIKit

extension UIViewController {
    
           
           func hideKeyboardWhenTappedAround() {
               let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
               tap.cancelsTouchesInView = false
               view.addGestureRecognizer(tap)
           }
           
           @objc func dismissKeyboard() {
               view.endEditing(true)
           }
           

    var viewColor: UIColor {
        return UIColor.fromHexaString(hex: "F3F3F3")
    }
    
    
    
}


