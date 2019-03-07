//
//  addWishCellViewController.swift
//  Gifty
//
//  Created by Other user on 2/14/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

struct ModelArray{
    var weArray:[weModel]
    init(weArray:[weModel]) {
        self.weArray=weArray
    }
}

struct weModel {
    var weTitle = ""
    var weDescribtion = ""
    var weDetails = ""
    init(weTitle:String,weDescribtion:String,weDetails:String) {
        self.weDescribtion=weDescribtion
        self.weDetails=weDetails
        self.weTitle=weTitle
    }
}
class addWishCellViewController: UIViewController {
    //variables
    var wishTitle = ""
    var wishDescribtion = ""
    var wishMoreDetails = ""
    var buttonTitle = ""
    var initator = ""
    // outlets
    @IBOutlet weak var wishTxtField: UITextField!
    
    @IBOutlet weak var wishDescribtionTxtField: UITextField!
    
    @IBOutlet weak var wishMoreDetailsTxtField: UITextField!

    @IBOutlet weak var addeditBtn: UIButton!
    
    // actions
    
    @IBAction func addMyWishBtnPressed(_ sender: UIButton) {
        let wishTitle = wishTxtField.text!
        let wishDescribtion = wishDescribtionTxtField.text!
        let  wishMoreDetails = wishMoreDetailsTxtField.text!
        let wish : weModel = weModel.init(weTitle: wishTitle, weDescribtion: wishDescribtion, weDetails: wishMoreDetails)
        wishArray.weArray.append(wish)
        self.dismiss(animated: true, completion: nil)
        }
    
    @IBAction func cancelBtnPressed(_ sender: UIButton) {
        let wish2 : weModel = weModel.init(weTitle: wishTitle, weDescribtion: wishDescribtion, weDetails:wishMoreDetails  )
                if initator=="vc1"
                    {}
                else if initator=="vc2"
                {
                    
                    wishArray.weArray.append(wish2)
        
                }
        self.dismiss(animated: true, completion: nil)
    }
   
        

    
    
     
    

    // view did load
    override func viewDidLoad() {
        super.viewDidLoad()
  
        addeditBtn.setTitle(buttonTitle, for: .normal)
        wishTxtField.text=wishTitle
        wishDescribtionTxtField.text=wishDescribtion
        wishMoreDetailsTxtField.text=wishMoreDetails
        
        // tab gesture stuff
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(addWishCellViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
    }

    //  functions

    // dismiss when view is tapped
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }

}
