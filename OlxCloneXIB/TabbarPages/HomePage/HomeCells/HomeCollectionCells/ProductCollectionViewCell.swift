//
//  ProductCollectionViewCell.swift
//  OlxCloneXIB
//
//  Created by Macservis on 19/04/22.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    static let identifier = "MyProductHomePageCellID"
    
    
    //MARK: - Outlets
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    @IBOutlet weak var nmName: UILabel!
    
    @IBOutlet weak var nmPrice: UILabel!
    
    @IBOutlet weak var nmMAnzil: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nmImageView.translatesAutoresizingMaskIntoConstraints = false
        nmImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
    }

    
    
}
