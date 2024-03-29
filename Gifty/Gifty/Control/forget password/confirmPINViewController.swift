//
//  confirmPINViewController.swift
//  MetroMasr
//
//  Created by Other user on 2/23/19.
//  Copyright © 2019 SoftTechnology. All rights reserved.
//

import UIKit

class confirmPINViewController: UIViewController {

    //variables
    var pinCode = ""
    // outlets
    
    @IBOutlet weak var PINcodeTextField: DesignableTextField!
    
    
    // actions
    
    @IBAction func doneBtnPressed(_ sender: UIButton) {
        
        pinCode=PINcodeTextField.text!
        if(pinCode.isEmpty)
        {
            
            let myAlert = UIAlertController(title: "Alert", message: "Please write the PIN code you got in the E_mail inbox  ", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated:true, completion:nil)
            
        }
        else if(pinCode != "1")
        {
            
            let myAlert = UIAlertController(title: "Alert", message: "Wrong PIN code check your E_mail inbox again or press resend PIN code Button to get a new one ", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated:true, completion:nil)
            
        }
        else
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "recreatePasswordViewController")as! recreatePasswordViewController
            self.present(vc, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func resendBtnPressed(_ sender: UIButton) {
        
        
        let myAlert = UIAlertController(title: "Re_Send", message: "Check your E_mail inbox again", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: .default){ action in
            
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
        
    }
    
    
    
    // view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(confirmPINViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        super.viewDidLoad()
        
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
}
