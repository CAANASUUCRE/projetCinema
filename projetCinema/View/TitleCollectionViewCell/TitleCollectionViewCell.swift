//
//  TitleCollectionViewCell.swift
//  tpMovie
//
//  Created by vanhouta on 04/04/2021.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        titleLabel.text = "Projet Cinema"
        
    }
    
    static var nib: UINib {
        
        return UINib(nibName: "TitleCollectionViewCell", bundle: nil)
        
    }
    
    static var reuseIdentifier: String {
        
        return "TitleCollectionViewCell"
        
    }

}
