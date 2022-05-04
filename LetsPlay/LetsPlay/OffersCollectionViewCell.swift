//
//  OffersCollectionViewCell.swift
//  LetsPlay
//
//  Created by Jadhav,Preethi Eshwarlal on 4/29/22.
//

import UIKit

class OffersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var offersImageViewOutlet: UIImageView!
    
    
    public func configure(with image: UIImage){
        offersImageViewOutlet.image = image;
    }
    
}
