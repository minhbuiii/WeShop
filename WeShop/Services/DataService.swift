//
//  DataService.swift
//  WeShop
//
//  Created by Bùi Minh on 15/4/25.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    func getCategories() -> [Category] {
        let categories = [
            Category(lable: "Furniture", imgName: "furniture.png"),
            Category(lable: "Housewares", imgName: "housewares.jpg"),
            Category(lable: "Toy", imgName: "toy.jpg"),
            Category(lable: "Food", imgName: "food.jpg"),
        ]
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
            case "Furniture":
            return [
                Product(imgName: "chair.png", title: "Chair", price: "10$"),
                Product(imgName: "commode.png", title: "Commode", price: "30$"),
                Product(imgName: "miror.png", title: "Miror", price: "300$"),
                Product(imgName: "table.png", title: "Table", price: "40$"),
                Product(imgName: "commode.png", title: "Commode", price: "60$"),
                Product(imgName: "miror.png", title: "Miror", price: "43$"),
                Product(imgName: "chair.png", title: "Chair", price: "89$"),
                Product(imgName: "commode.png", title: "Commode", price: "57$"),
                Product(imgName: "table.png", title: "Table", price: "48$"),
            ]
            case "Housewares":
            return [
                Product(imgName: "electric-cooker.jpg", title: "Electric cooker", price: "22$"),
                Product(imgName: "electric-cooker.jpg", title: "Electric cooker", price: "22$"),
                Product(imgName: "electric-cooker.jpg", title: "Electric cooker", price: "22$"),
                Product(imgName: "electric-cooker.jpg", title: "Electric cooker", price: "22$"),
                Product(imgName: "electric-cooker.jpg", title: "Electric cooker", price: "22$")
            ]
            case "Toy":
            return [
                Product(imgName: "commode.png", title: "Commode", price: "30$"),
                Product(imgName: "miror.png", title: "Miror", price: "30$"),
                Product(imgName: "commode.png", title: "Commode", price: "30$")
            ]
            case "Food":
            return [
                Product(imgName: "pan.jpg", title: "Pan", price: "30$"),
            ]
            default:
            return [
                Product(imgName: "pan.jpg", title: "Pan", price: "30$")
            ]
        }
    }
}
