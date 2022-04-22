//
//  AvvaldanViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 22/04/22.
//

import UIKit

class AvvaldanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = viewColor
       title = "Avvaldan ko'rish"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Bekor qilish", style: .plain, target: self, action: #selector(esc))
    }
    

    @objc func esc() {
        dismiss(animated: true)
    }
  
}
