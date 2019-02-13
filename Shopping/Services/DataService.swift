//
//  DataService.swift
//  Shopping
//
//  Created by sHiKoOo on 2/13/19.
//  Copyright © 2019 sHiKoOo. All rights reserved.
//

import Foundation

class DataServices {
    // static for only 1 copy of that object in memory and make it shared to others
    static let instance = DataServices()
    
    // set the data source we want to show it from server or internal *** private let name = [model]
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "ELECTRONICS", imageName: "digital")
    ]
    
    //set data source we want to show it for products
    private let shirts = [
        Product(title: "Shirt no.1", price: "10$", imageName: "shirt01"),
        Product(title: "Shirt no.2", price: "20$", imageName: "shirt02"),
        Product(title: "Shirt no.3", price: "30$", imageName: "shirt03"),
        Product(title: "Shirt no.4", price: "40$", imageName: "shirt04"),
        Product(title: "Shirt no.5", price: "50$", imageName: "shirt05")
    ]
    private let hoodies = [
        Product(title: "Hoodies no.1", price: "10$", imageName: "hoodie01"),
        Product(title: "Hoodies no.2", price: "20$", imageName: "hoodie02"),
        Product(title: "Hoodies no.3", price: "30$", imageName: "hoodie03"),
        Product(title: "Hoodies no.4", price: "40$", imageName: "hoodie04"),
        ]
    private let hats = [
        Product(title: "hats no.1", price: "10$", imageName: "hat01"),
        Product(title: "hats no.2", price: "20$", imageName: "hat02"),
        Product(title: "hats no.3", price: "30$", imageName: "hat03"),
        Product(title: "hats no.4", price: "40$", imageName: "hat04")
    ]
    private let electronics = [Product]()
    
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    func getShirts() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getHats() -> [Product] {
        return hats
    }
    func getElectronics() -> [Product] {
        return electronics
    }
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return  getShirts()
        case "HOODIES":
            return  getHoodies()
        case "HATS":
            return getHats()
        default:
            return getShirts()
        }
    }
    
    
    
    
}
