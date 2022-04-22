//
//  Category.swift
//  OlxCloneXIB
//
//  Created by Macservis on 18/04/22.
//

import Foundation


//enum Categorys {
//    case
//}




class Category {
    
    var name: String? = ""
    var imageStr: String? = ""
    var natija: Int? = 0
    var type: Taype? = .all
    
    init(name: String?,imageStr: String?,natija: Int?) {
        self.name = name
        self.imageStr = imageStr
        self.natija = natija
        type = .all
    }
    init(name: String?,imageStr: String?,natija: Int?,type: Taype?) {
        self.name = name
        self.imageStr = imageStr
        self.natija = natija
        self.type = type
    }
}
