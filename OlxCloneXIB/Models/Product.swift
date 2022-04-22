//
//  Product.swift
//  OlxCloneXIB
//
//  Created by Macservis on 19/04/22.
//

import Foundation


class Product {
    var imageStr: [String?] = [""]
    var name: String? = ""
    var price: String? = ""
    var type: Taype? = .all
    var like: Bool? = false
    
    
    
    init(imageStr: [String?], name: String?, price: String?,  type: Taype?) {
        self.imageStr = imageStr
        self.name = name
        self.price = price
        self.type = type
    }
    
}
