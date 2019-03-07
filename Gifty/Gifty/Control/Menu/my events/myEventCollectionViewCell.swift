//
//  myEventCollectionViewCell.swift
//  Gifty
//
//  Created by Other user on 2/14/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class myEventCollectionViewCell: UICollectionViewCell {
   // variables
    var deleteAndEditDelegate : DataCollection?
    var index :IndexPath?
    
    // outlets
    
    @IBOutlet weak var eventLbl: UILabel!
    
    
    
    
    
    ////actions
    @IBAction func deleteEventBtnPressed(_ sender: UIButton) {
       
        deleteAndEditDelegate?.deleteCell(index: (index?.row)!)
        
    }
    
    @IBAction func editEventBtnPressed(_ sender: UIButton) {
        
        deleteAndEditDelegate?.editCell(index: (index?.row)!)
        
    }
    
    
    
    
}
