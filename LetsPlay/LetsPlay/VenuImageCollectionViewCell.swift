//
//  VenuImageCollectionViewCell.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 5/3/22.
//

import UIKit

class VenuImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewInfoOutlet: UIImageView!
    
    public func configure(with image: UIImage){
        imageViewInfoOutlet.image = image;
    }
}
