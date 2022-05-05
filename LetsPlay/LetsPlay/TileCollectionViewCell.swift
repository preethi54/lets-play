//
//  TileCollectionViewCell.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class TileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageViewOutlet: UIImageView!

    public func configure(image: UIImage){
        imageViewOutlet.image = image;
        imageViewOutlet.layer.cornerRadius = 15
    }

    
}
