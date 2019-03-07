//
//  forgetPasswordViewController.swift
//  Gifty
//
//  Created by Other user on 2/13/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class forgetPasswordViewController: UIViewController {
    // variables
    var userEmail = ""
    //constants
    //outlets
    
    @IBOutlet weak var userEmailTextField: DesignableTextField!
    
    
    //actions
    
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func resetBtnPressed(_ sender: UIButton) {
       
        userEmail=userEmailTextField.text!

        if(userEmail.isEmpty)
        {
            let myAlert = UIAlertController(title: "Alert", message: "Please E_mail is required to reset password", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated:true, completion:nil)
        }



        let myAlert = UIAlertController(title: "PIN", message: "Check your E_mail inbox for PIN code", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: .default){ action in

                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "confirmPINViewController")as! confirmPINViewController
        self.present(vc, animated: true, completion: nil)

        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)

    }
    
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(forgetPasswordViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        super.viewDidLoad()
        
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }

  
}
