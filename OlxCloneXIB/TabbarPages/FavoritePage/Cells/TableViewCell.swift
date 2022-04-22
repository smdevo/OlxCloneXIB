//
//  TableViewCell.swift
//  OlxCloneXIB
//
//  Created by Macservis on 20/04/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let identifier = "MyFavoriteTableViewCell"

    //MARK: - outlets
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    
    @IBOutlet weak var nmNameLAbel: UILabel!
    
    @IBOutlet weak var nmPriceLabel: UILabel!
    
    
    @IBOutlet weak var nmmanzilLabel: UILabel!
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nmImageView.translatesAutoresizingMaskIntoConstraints = false
        nmImageView.clipsToBounds = true
        nmImageView.layer.cornerRadius = 10
    }
    
}
