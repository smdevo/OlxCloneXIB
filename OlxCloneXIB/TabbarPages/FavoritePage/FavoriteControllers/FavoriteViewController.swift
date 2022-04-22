//
//  FavoriteViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 17/04/22.
//

import UIKit

class FavoriteViewController: UIViewController {

    
    
    open var serverProductData: [Product] = HomeViewController().serverInputProducts()
    var serverLikeProduct: [Product] = []
    
    //MARK: - Outlets

    
    @IBOutlet weak var nmTableView: UITableView!
    
    
    
    @IBOutlet weak var nmSaqlaelonButton: UIButton!
    
    
    @IBOutlet weak var nmSaqlaQidiruvButton: UIButton!
 
    @IBOutlet weak var nmQoraelonview: UIView!
    
    @IBOutlet weak var nmQoraqidiruvview: UIView!
    
    
    @IBOutlet weak var nmOqelonburchakview: UIView!
    
    @IBOutlet weak var nmOqelonurtaview: UIView!
    
    
    @IBOutlet weak var nmOqqidiruvurtaview: UIView!
    
    @IBOutlet weak var nmOqqidiruvburchakview: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
      }

    //MARK: - Methods
      
      func startFunction() {
         
          
          
          setServerDate()
          setTableView()
          setViews()
          startNAvigation()
      }
      
    
    
    func setServerDate() {
        
        
        for i in 0 ..< serverProductData.count {
            
            if i % 2 == 0 {
                serverProductData[i].like = true
                
                serverLikeProduct.append(serverProductData[i])
            }
            
            
        }
        
        
        
        
    }
    
    
    func setTableView() {
        
        nmTableView.delegate = self
        nmTableView.dataSource = self
        nmTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
        
        
    }
    
    
    
    
    
    func setViews() {
        view.backgroundColor = viewColor
        nmSaqlaelonButton.backgroundColor = viewColor
        nmSaqlaQidiruvButton.backgroundColor = viewColor
        
        nmQoraqidiruvview.backgroundColor = viewColor
        nmOqqidiruvburchakview.backgroundColor = viewColor
        
      
    }
      
      func startNAvigation() {
          title = "Saralanganlar"
          
          navigationController?.navigationBar.prefersLargeTitles = true
      }
    
    //MARK: Actions
    

    
    @IBAction func nmRefreshElonSaqlaAction(_ sender: UIButton) {
        
        nmQoraelonview.backgroundColor = UIColor.label
        nmQoraqidiruvview.backgroundColor = viewColor
        
        nmOqelonburchakview.backgroundColor = UIColor.black
        nmOqqidiruvburchakview.backgroundColor = viewColor
        
        
    }
    
    
   
    @IBAction func nmRefreshQidiruvSaqlaAction(_ sender: UIButton) {
        
        nmQoraelonview.backgroundColor = viewColor
        nmQoraqidiruvview.backgroundColor = UIColor.label
        
        nmOqelonburchakview.backgroundColor = viewColor
        nmOqqidiruvburchakview.backgroundColor = UIColor.label
        
    }
    
    
}





extension FavoriteViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serverLikeProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = nmTableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.nmImageView.image = UIImage(named: serverLikeProduct[indexPath.row].imageStr.first!!)
        cell.nmPriceLabel.text = serverLikeProduct[indexPath.row].price
        cell.nmNameLAbel.text = serverLikeProduct[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
