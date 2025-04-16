//
//  Product.swift
//  WeShop
//
//  Created by Bùi Minh on 15/4/25.
//

import Foundation
struct Product {
    private(set) public var imgName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(imgName: String, title: String, price: String) {
        self.imgName = imgName
        self.title = title
        self.price = price
    }
    
}
