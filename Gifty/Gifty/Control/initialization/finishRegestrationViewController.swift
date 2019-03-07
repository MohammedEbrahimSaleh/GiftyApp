//  finishRegestrationViewController.swift
//  Gifty
//
//  Created by Other user on 2/6/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit
import CountryPickerView

class finishRegestrationViewController: UIViewController,CountryPickerViewDelegate{
    // the variables
    private var datePicker:UIDatePicker?
    // the outlets
    @IBOutlet weak var countryTextField: DesignableTextField!
     @IBOutlet weak var userFirstNameTextFiled: DesignableTextField!
    @IBOutlet weak var userLastNameTextField: DesignableTextField!
    @IBOutlet weak var userSchoolTextField: DesignableTextField!
    @IBOutlet weak var userBirthDateTextField: DesignableTextField!
    @IBOutlet weak var userPhoneNumberTextField: DesignableTextField!
    @IBOutlet weak var userCityTextField: DesignableTextField!
    @IBOutlet weak var userStateTextField: DesignableTextField!
    
     let cpv = CountryPickerView(frame: CGRect(x: 0, y: 0, width: 120, height: 20))
  //the actions 
  
    @IBAction func prvButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  
    @IBAction func finishButtonPressed(_ sender: Any) {
        
        // storeing the text in fields
        let userFirstName = userFirstNameTextFiled.text
        let userLastName = userLastNameTextField.text
        let userSchool = userSchoolTextField.text
        let userBirthDate = userBirthDateTextField.text
        let userPhoneNumber = userPhoneNumberTextField.text
        let userCity = userCityTextField.text
        let userState = userStateTextField.text
        
        // check for empty data
        
        if ( (userFirstName?.isEmpty) ?? false || (userLastName?.isEmpty) ?? false || (userSchool?.isEmpty) ?? false||(userBirthDate?.isEmpty) ?? false || (userCity?.isEmpty) ?? false || (userState?.isEmpty) ?? false || (userPhoneNumber?.isEmpty) ?? false )
        {
            displayMyAlertMessage(userMessage:"All fields are required")
            return;
        }
        // Store data
        
        
        //Display alert message with confirmation
        
        let myAlert = UIAlertController(title: "Perfect", message: "Regestration is successfull\nWelcome to Gifty", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){ action in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "firstWelcomeScreenViewController") as! firstWelcomeScreenViewController
            self.present(vc, animated: true, completion: nil)
            
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
    }
    
    // function to display alerts
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //birth date picker stuff
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        userBirthDateTextField.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(finishRegestrationViewController.dateChanged(datePicker:)), for: .valueChanged)

        
        // tab gesture stuff
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(finishRegestrationViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
 
        // country text field stuff
        countryTextField.leftView = cpv
        countryTextField.leftViewMode = .always
        cpv.delegate = self
        
        
        
    }
    
    
    // support  functions
    
    // changing the date
    @objc func dateChanged (datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        userBirthDateTextField.text = dateFormatter.string(from: datePicker.date)
       
    }
    
    // dismiss when view is tapped
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    // put the country in the text field
    func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country){
        countryTextField.text = cpv.selectedCountry.name
    }
}
