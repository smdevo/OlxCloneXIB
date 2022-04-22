//
//  HomeViewController.swift
//  OlxCloneXIB
//
//  Created by Macservis on 17/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    var categories: [Category] = []
    var serverProductData: [Product] = []
    
    //MARK: Outlets
    
    @IBOutlet var nmSearchBar: UISearchBar!
    
    @IBOutlet var chiziqView: UIView!
    
    
    @IBOutlet weak var nmBolimCollectionView: UICollectionView!
    
    @IBOutlet weak var nmProductCollectionView: UICollectionView!
    
  
        
   
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
      startFunction()
    }
   

    
    //MARK: methods
    
    func startFunction() {
        
        categories = categoryCreateInput()
        serverProductData = serverInputProducts()
        setCollectionViews()
        setViews()
        startNAvigation()
        hideKeyboardWhenTappedAround()
    }
    
    
    func categoryCreateInput() -> [Category] {
        
        var categories: [Category] = []
        
        
        categories.append(Category(name: "Barcha e'lonlar", imageStr: "im_barcha", natija: 1500))
        categories.append(Category(name: "Bolalar olami", imageStr: "im_bolalar",natija: 1700))
        categories.append(Category(name: "Uy savdo", imageStr: "im_uy", natija: 1500))
        categories.append(Category(name: "Avtomobillar", imageStr: "im_mashina", natija: 500))
        categories.append(Category(name: "Ish", imageStr: "im_ish", natija: 18000))
        categories.append(Category(name: "Jonivorlar", imageStr: "im_hayvonlar", natija: 3000))
        categories.append(Category(name: "Uy jihozlari", imageStr: "im_sad", natija: 3765))
        categories.append(Category(name: "Elektronika", imageStr: "im_elektronika", natija: 7423))
        categories.append(Category(name: "Biznes chegirma", imageStr: "im_biznes", natija: 123))
        categories.append(Category(name: "Moda va stil", imageStr: "im_kiyim", natija: 87678))
        categories.append(Category(name: "Sport va Xobbi", imageStr: "im_sport", natija: 723))
        categories.append(Category(name: "Tekinga beraman", imageStr: "im_tekin", natija: 2143))
        categories.append(Category(name: "Obmen", imageStr: "im_obmen", natija: 8743))
        
        return categories
    }
    
    
    
    
    func  serverInputProducts() -> [Product] {
       
        var data: [Product] = []
        
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_car"], name: "mashina", price: "11000", type: .mashina))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_car"], name: "mashina", price: "11000", type: .mashina))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_car"], name: "mashina", price: "11000", type: .mashina))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        data.append(Product(imageStr: ["im_car"], name: "mashina", price: "11000", type: .mashina))
        data.append(Product(imageStr: ["im_phone"], name: "Telefon", price: "340", type: .elektronika))
        data.append(Product(imageStr: ["im_velik"], name: "Velik", price: "100", type: .sport))
        data.append(Product(imageStr: ["im_ball"], name: "Koptok", price: "10", type: .sport))
        data.append(Product(imageStr: ["im_dog"], name: "kuchuk", price: "0", type: .tekin))
        
        return data
        
    }
    
    
    
    func setCollectionViews() {
        nmBolimCollectionView.delegate = self
        nmBolimCollectionView.dataSource = self
        nmBolimCollectionView.register(UINib(nibName: "BolimCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: BolimCollectionViewCell.Identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width:  110, height: nmBolimCollectionView.frame.size.height - 20)
        layout.scrollDirection = .horizontal
        nmBolimCollectionView.collectionViewLayout = layout
        
        nmProductCollectionView.delegate = self
        nmProductCollectionView.dataSource = self
        nmProductCollectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        nmProductCollectionView.backgroundColor = UIColor.fromHexaString(hex: "F3F3F3")
        let layout2: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout2.minimumLineSpacing = 10
        layout2.minimumInteritemSpacing = 10
        
        if UIScreen.main.bounds.width > 500 {
            layout2.itemSize = CGSize(width: (UIScreen.main.bounds.width - 50) / 3, height: (UIScreen.main.bounds.height - 320) / 3)
        }else {
            layout2.itemSize = CGSize(width: (UIScreen.main.bounds.width - 40) / 2, height: (UIScreen.main.bounds.height - 320) / 2)
        }
        
        layout2.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        nmProductCollectionView.collectionViewLayout = layout2
        
        
        
        
    }
    
    
    
    
    func setViews() {
        view.backgroundColor = viewColor
    
        chiziqView.backgroundColor = viewColor
    }
    
    func startNAvigation() {
        title = "E'lonlar"
        navigationItem.titleView = nmSearchBar
       
    }
    
   
    
    
    
    //MARK: Actions
    
    

    @IBAction func nmHammasiAction(_ sender: UIButton) {
       let vc = RuknlarViewController(nibName: "RuknlarViewController", bundle: nil)
        
       let nc = UINavigationController(rootViewController: vc)
        
        nc.navigationBar.backgroundColor = viewColor
        
        nc.modalPresentationStyle = .fullScreen
        present(nc, animated: true)
    }
    
    
    
}









extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == nmBolimCollectionView {
        return categories.count
        }
        
        return serverProductData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == nmBolimCollectionView {
        let item = categories[indexPath.row]
        let cell = nmBolimCollectionView.dequeueReusableCell(withReuseIdentifier: BolimCollectionViewCell.Identifier, for: indexPath) as! BolimCollectionViewCell
        cell.nmImageView.image = UIImage(named: item.imageStr!)
        cell.nmNameLabel.text = item.name
        return cell
        }
        
        let item = serverProductData[indexPath.row]
        let cell = nmProductCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
        cell.nmImageView.image = UIImage(named: (item.imageStr.first ?? "im_image")!)
        cell.nmName.text = item.name
        cell.nmPrice.text = "\(item.price ?? "null") $"
        cell.layer.cornerRadius = 8
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == nmBolimCollectionView {
        navigationController?.pushViewController(ResultBolimViewController(), animated: true)
        }
    }
    
}
