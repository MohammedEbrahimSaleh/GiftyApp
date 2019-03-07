//
//  myWishesCollectionViewCell.swift
//  Gifty
//
//  Created by Other user on 2/15/19.
//  Copyright © 2019 Other user. All rights reserved.
//
protocol DataCollection {
    func editCell(index:Int)
    func deleteCell(index:Int)
}
import UIKit

class myWishesCollectionViewCell: UICollectionViewCell {
    //variables
    var deleteAndEditDelegate2 : DataCollection?
    var index :IndexPath?
    // outlets
    @IBOutlet weak var myWishLbl: UILabel!
    //actions
    
    @IBAction func deleteBtnPressed(_ sender: UIButton) {
        deleteAndEditDelegate2?.deleteCell(index: (index?.row)!)
            
        
    }
    @IBAction func editBtnPressed(_ sender: UIButton) {
        
        deleteAndEditDelegate2?.editCell(index: (index?.row)!)
    }
    
    
    
    
    //functions
    
    
    
    
}
