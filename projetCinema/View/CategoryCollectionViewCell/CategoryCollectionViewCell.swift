//
//  CategoryCollectionViewCell.swift
//  tpMovie
//
//  Created by vanhouta on 04/04/2021.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        self.layer.masksToBounds = false
        
    }

    
    //Configure les labels concernant les catégories
    func configureCategoriesName(CategoriesName: String) {
        
        nameLabel.text = CategoriesName
        
    }
    
    
    static var nib: UINib {
        
        UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
        
    }
    
    static var reuseIdentifier: String {
        
        "CategoryCollectionViewCell"
        
    }
    

}
