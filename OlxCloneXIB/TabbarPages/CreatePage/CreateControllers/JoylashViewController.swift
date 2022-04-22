//
//  JoylashViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 22/04/22.
//

import UIKit

class JoylashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = viewColor
        title = "E'lon joylash"
         navigationController?.navigationBar.prefersLargeTitles = true
         navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Bekor qilish", style: .plain, target: self, action: #selector(esc))
     }
     

     @objc func esc() {
         dismiss(animated: true)
     }
   
 }
