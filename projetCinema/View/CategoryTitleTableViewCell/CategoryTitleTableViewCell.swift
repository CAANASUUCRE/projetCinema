//
//  CategoryTitleTableViewCell.swift
//  tpMovie
//
//  Created by vanhouta on 31/05/2021.
//

import UIKit

class CategoryTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
    }
    
    static var nib: UINib {
        
        return UINib(nibName: "CategoryTitleTableViewCell", bundle: nil)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
        
    }
    
    
    static var reuseIdentifier: String {
        
        return "CategoryTitleTableViewCell"
        
    }
    
}
