//
//  TileCollectionViewCell.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class TileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage){
        imageViewOutlet.image = image;
        imageViewOutlet.layer.cornerRadius = 15
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "TileCollectionViewCell", bundle: nil)
    }

}
