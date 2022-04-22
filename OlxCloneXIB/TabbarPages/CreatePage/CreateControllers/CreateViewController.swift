//
//  CreateViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 17/04/22.
//

import UIKit

class CreateViewController: UIViewController {

    var myProduct: RealProduct = RealProduct()
    var two1 = 0, two2 = 1
    
    
//MARK: - Outlets
    
    @IBOutlet weak var nmBackView: UIView!
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    @IBOutlet weak var nmSarlavhaTextField: UITextField!
    
    @IBOutlet weak var nmBiznesButton: UIButton!
    
    @IBOutlet weak var nmJismoniyButton: UIButton!
    
    @IBOutlet weak var nmTavsivTextView: UIView!
    
    
    @IBOutlet weak var nmEmailTextField: UITextField!
    
    @IBOutlet weak var nmPhoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        hideKeyboardWhenTappedAround()
        setViews()
        startFunction()
        hideKeyboardWhenTappedAround()
      }

    
//MARK: Methods
      
    func setViews() {
        nmBackView.backgroundColor = viewColor
    
        let gestureImageView:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(targetImageViewDidTapped))
        gestureImageView.numberOfTapsRequired = 1
        nmImageView?.isUserInteractionEnabled = true
        nmImageView?.addGestureRecognizer(gestureImageView)
        nmImageView.contentMode = .scaleAspectFill
        
        createDoneButton(textField: nmSarlavhaTextField)
        createDoneButton(textField: nmEmailTextField)
        createDoneButton(textField: nmPhoneTextField)
        
    }
    
    
    
    func createDoneButton(textField: UITextField) {
        
    let toolbar  = UIToolbar()
        toolbar.sizeToFit()
        let nullbarbuttonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneBarButtonItem = UIBarButtonItem(title: "Tayyor", style: UIBarButtonItem.Style.done, target: self, action: #selector(endKeyboard))
        toolbar.setItems([nullbarbuttonItem,doneBarButtonItem], animated: true)
        textField.inputAccessoryView = toolbar
    }
   

      func startFunction() {
          view.backgroundColor = viewColor
          
          startNAvigation()
      }
      
      
      func startNAvigation() {
          title = "E'lon bering"
          
          navigationController?.navigationBar.prefersLargeTitles = true
      }

    
    
    //MARK: objc Methods
    
    @objc func targetImageViewDidTapped() {
        
        let alerviewController: UIAlertController = UIAlertController(title: "", message: "", preferredStyle: UIAlertController.Style.actionSheet)
        
        alerviewController.addAction(UIAlertAction(title: "Fotosuratni yaratish", style: UIAlertAction.Style.default, handler: {_ in print("open camera") }))
        alerviewController.addAction(UIAlertAction(title: "Galareyadan tanlash", style: UIAlertAction.Style.default, handler: { [self]_ in myProduct.image = UIImage(named: "im_car")
            nmImageView.image = UIImage(named: "im_car")
        }))
        alerviewController.addAction(UIAlertAction(title: "Bekor qilish", style: UIAlertAction.Style.cancel, handler: {_ in print("cancel") }))
    
        present(alerviewController, animated: true)
    }
    
    @objc func endKeyboard() {
        nmSarlavhaTextField.endEditing(true)
    }
    
    
    //MARK: Actions
    
    @IBAction func nmBolimTanlaAction(_ sender: UIButton) {
        
        navigationController?.pushViewController(NewRuknViewController(), animated: true)
        
    }
    
    
    
    @IBAction func nmTuriAction(_ sender: UIButton){
        switch sender.tag {
        case 1:
            if two1 == 0 {
                if two2 == 0 {
                    two1 = 1
                    nmBiznesButton.backgroundColor = UIColor.systemTeal
                }else {
                    two1 = 1
                    two2 = 0
                    nmBiznesButton.backgroundColor = UIColor.systemTeal
                    nmJismoniyButton.backgroundColor = UIColor.lightGray
                }
                
            }
            else
            {
                if two2 == 0 {
                  two1 = 0
                  nmBiznesButton.backgroundColor = UIColor.lightGray
                }
                
            }
            
            
        case 2:
            if two1 == 0 {
                
            if two2 == 0 {
                two2 = 1
                nmJismoniyButton.backgroundColor = UIColor.systemTeal
            }else {
                two2 = 0
                nmJismoniyButton.backgroundColor = UIColor.lightGray
            }
        }
        else
        {
            if two2 == 0 {
              two1 = 0
                two2 = 1
              nmBiznesButton.backgroundColor = UIColor.lightGray
                nmJismoniyButton.backgroundColor = .systemTeal
            }
            
        }
        default: break
        }
    }
    
    
    @IBAction func uzaytirishAction(_ sender: UISwitch) {

        
        if sender.isOn {
            myProduct.avtomatik_uzaytirish = true
            print("uzaytir")
        }else {
            myProduct.avtomatik_uzaytirish = false
            print("uzaytirmaslik")
        }
        
        
        
    }
    
    
   
    @IBAction func nmAvvaldan_Korish(_ sender: UIButton) {
        
        switch sender.tag {
        case 3:
            present(UINavigationController(rootViewController: AvvaldanViewController()), animated: true)

        case 4:   present(UINavigationController(rootViewController: JoylashViewController()), animated: true)
            
            
        default: break
        }
    }
    
    
}




