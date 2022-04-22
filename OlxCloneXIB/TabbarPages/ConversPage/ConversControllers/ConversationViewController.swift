//
//  ConversationViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 17/04/22.
//

import UIKit

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
      }

      
      func startFunction() {
          view.backgroundColor = UIColor.white
          
          startNAvigation()
      }
      
      
      func startNAvigation() {
          title = "Suhbatlar"
          
         
      }

}
