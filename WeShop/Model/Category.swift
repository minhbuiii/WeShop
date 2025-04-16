//
//  Category.swift
//  WeShop
//
//  Created by Bùi Minh on 15/4/25.
//

import Foundation
struct Category {
    private(set) public var lable: String
    private(set) public var imgName: String
    
    init(lable: String, imgName: String) {
        self.lable = lable
        self.imgName = imgName
    }
}
