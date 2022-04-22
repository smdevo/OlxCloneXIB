//
//  BolimCollectionViewCell.swift
//  OlxCloneXIB
//
//  Created by Macservis on 18/04/22.
//

import UIKit

class BolimCollectionViewCell: UICollectionViewCell {
    
    static let Identifier = "bolimCell"
    
//MARK: Outlets
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    @IBOutlet weak var nmNameLabel: UILabel!
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nmImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75).isActive = true
    }

}
