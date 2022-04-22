//
//  RuknTableViewCell.swift
//  OlxCloneXIB
//
//  Created by Macservis on 19/04/22.
//

import UIKit

class RuknTableViewCell: UITableViewCell {
    
    static let identifier = "MyTableCell"
    
    
//MARK: - outlets
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    @IBOutlet weak var nmNameLabel: UILabel!
    
    @IBOutlet weak var nmNatijalarLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    
}
