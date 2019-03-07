//
//  startRegestrationViewController.swift
//  Gifty
//
//  Created by Other user on 2/3/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit
//protocol GiftyName {
//    func getGiftyName(name:String)
//
//}
var globalGiftyName :String = ""
class startRegestrationViewController: UIViewController {
 // the outlets
    
    
    @IBOutlet weak var userGiftyNameTextField: DesignableTextField!
    
    
    @IBOutlet weak var userEmailTextField: DesignableTextField!
    
    @IBOutlet weak var userPasswordTextField: DesignableTextField!
    
    @IBOutlet weak var repeatedPasswordTextField: DesignableTextField!
    
    //the actions

    @IBAction func nextButtomPressed(_ sender: Any) {
        // checking for the correction of the email and password constraints
        let userGiftyName = userGiftyNameTextField.text
        globalGiftyName = userGiftyName!
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userReapeatedPassword = repeatedPasswordTextField.text
        
        if ( (userGiftyName?.isEmpty) ?? false||(userEmail?.isEmpty) ?? false||(userPassword?.isEmpty) ?? false||(userReapeatedPassword?.isEmpty) ?? false )
        {
            displayMyAlertMessage(userMessage:"All fields are required")
           
        }
        else if  (userPassword != userReapeatedPassword) {
            displayMyAlertMessage(userMessage:"Password don't match")
        }
        else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "finishRegestrationViewController")
            self.present(vc, animated: true, completion: nil)

        }
    }
    // send user back to log in
    @IBAction func haveAccountButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // function to display alerts 
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
    }
    
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    override func viewDidLoad() {
      
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(startRegestrationViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        
    }

}








