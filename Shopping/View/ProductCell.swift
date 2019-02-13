//
//  ProductCell.swift
//  Shopping
//
//  Created by sHiKoOo on 2/13/19.
//  Copyright © 2019 sHiKoOo. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    func updateView(product: Product) {
        titleLbl.text = product.title
        priceLbl.text = product.price
        productImg.image = UIImage(named: product.imageName)
    }
}
