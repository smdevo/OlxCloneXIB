//
//  ResultBolimViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 19/04/22.
//

import UIKit

class ResultBolimViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var nmSearchBar: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }


 //MARK: - Methods
    
    func startFunction() {
        view.backgroundColor = UIColor.fromHexaString(hex: "F3F3F3")
        
        
        
        startNAvigation()
    }
    
    
    
    func startNAvigation() {
        
        navigationItem.titleView = nmSearchBar
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_back"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(esc))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_favorite_no"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(goLike))
        
        
    }

    
    //MARK: - objc methods
    
    @objc func esc() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func goLike() {
        
        print(#function)
    
    }
    
    

}
