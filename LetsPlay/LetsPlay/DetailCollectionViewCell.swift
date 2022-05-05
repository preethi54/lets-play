//
//  DetailCollectionViewCell.swift
//  LetsPlay
//
//  Created by Jadhav,Preethi Eshwarlal on 4/29/22.
//

import UIKit

class DetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    public func configure(image: UIImage?){
        imageOutlet.image = image ?? UIImage(named:"b1");
    }
    

}
