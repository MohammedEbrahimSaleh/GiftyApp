//  shopForAGiftViewController.swift
//  Gifty
//
//  Created by Other user on 2/27/19.
//  Copyright © 2019 Other user. All rights reserved.

import UIKit

class shopForAGiftViewController: UIViewController {

    // variables
    var amazonView : UIView?
    var SouqView : UIView?
    var jumiaView : UIView?
    // outlets
    @IBOutlet weak var shopingSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var shopingView: UIView!
    
    
    
    // actions
    
    @IBAction func doneShopingBtnPressed(_ sender: UIButton) {
        
         self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func shoppingSegmentBtns(_ sender: UISegmentedControl) {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
