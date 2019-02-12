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
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
}
