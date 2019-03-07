//
//  friendsWishesCollectionViewCell.swift
//  Gifty
//
//  Created by Other user on 2/14/19.
//  Copyright © 2019 Other user. All rights reserved.
//
//protocol Move {
//    func move( Destination : String )
//}
import UIKit

class friendsWishesCollectionViewCell: UICollectionViewCell {
    // variables
   // var moveDelegat : Move?
    var flag = true
    var image = UIImage.init(named: "G0tit")
    // outlets
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var fWishesLbl: UILabel!
    
    @IBOutlet weak var gotItBtn: UIButton!
    // actions
    
    @IBAction func gotITBtnPressed(_ sender: UIButton) {
        
        if flag == true
        {
            gotItBtn.setTitleColor(.white, for: .normal)
            gotItBtn.setTitle("   Great you got this one ", for: .normal)
            flag = false
          //  moveDelegat?.move(Destination: "shopForAGiftViewController")
            
        }
        else if flag == false
        {
            gotItBtn.setTitle("", for: .normal)
            gotItBtn.setImage(image, for: .normal)
            flag = true
        }
        
    }
    
}
