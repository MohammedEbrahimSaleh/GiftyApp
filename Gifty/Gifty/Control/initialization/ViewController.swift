//
//  ViewController.swift
//  Gifty
//
//  Created by Other user on 1/17/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var email :String = ""
    var passwordd :String = ""
    //outlets
    @IBOutlet weak var userEmailTextField: DesignableTextField!
    
    @IBOutlet weak var userPasswordTextField: DesignableTextField!
    
    // actions
    
    @IBAction func logInBtnPressed(_ sender: UIButton) {
        
        email=userEmailTextField.text!
        passwordd=userPasswordTextField.text!
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SideNavigationController") as! SideNavigationController
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func forgetBtnPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "forgetPasswordViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    @IBAction func signUpBtnPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "startRegestrationViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    // view did load
    override func viewDidLoad() {
        
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        super.viewDidLoad()
        
    }

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
    
}

