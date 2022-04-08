//
//  TimingCollectionViewCell.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class TimingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var buttonOutlet: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setButtonTitle(_ title: String) -> Void {
        buttonOutlet.setTitle(title, for: .normal)
    }
    
    public static func nib() ->  UINib{
        return UINib(nibName: "TimingCollectionViewCell", bundle:nil)
    }

}
