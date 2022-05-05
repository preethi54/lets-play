//
//  TimingCollectionViewCell.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 4/7/22.
//

import UIKit

class TimingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var buttonOutlet: UIButton!

    var index : Int?
    override func awakeFromNib() {
    }
    
    public func setButtonTitle(_ title: String) -> Void {
        buttonOutlet.setTitle(title, for: .normal)
    }
    
    public func setButtonSelected() ->Void{
     if buttonOutlet.isEnabled{
        buttonOutlet.backgroundColor = UIColor.systemGreen
        buttonOutlet.setTitleColor(UIColor.white, for: .normal)
        }
    }
    
    public func adjustButtonSize()->Void{
        buttonOutlet.layer.cornerRadius = 5
        buttonOutlet.backgroundColor = UIColor.systemBlue
        buttonOutlet.setTitleColor(UIColor.white, for: .normal)
    }

    
    public func disableButton() -> Void{
        buttonOutlet.isEnabled = false;
        buttonOutlet.backgroundColor = UIColor.lightGray
        buttonOutlet.setTitleColor(UIColor.black, for: .normal)
    }
}
