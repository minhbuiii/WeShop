//
//  CategoryCellTableViewCell.swift
//  WeShop
//
//  Created by Bùi Minh on 15/4/25.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryBg: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateViews(category: Category) {
        categoryBg.image = UIImage(named: category.imgName)
        categoryLabel.text = category.lable
    }
}
